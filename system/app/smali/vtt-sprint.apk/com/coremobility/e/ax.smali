.class public final Lcom/coremobility/e/ax;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Z

.field d:Lcom/coremobility/integration/file/a;

.field final synthetic e:Lcom/coremobility/e/aw;


# direct methods
.method public constructor <init>(Lcom/coremobility/e/aw;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/coremobility/e/ax;->e:Lcom/coremobility/e/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/coremobility/e/ax;->a:Ljava/lang/String;

    return-void
.end method

.method private a(JZZZ)V
    .registers 15

    const-wide/16 v7, 0x0

    const/16 v6, 0x3e8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/e/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/coremobility/e/ax;->c:Z

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    new-instance v2, Lcom/coremobility/integration/h;

    invoke-direct {v2}, Lcom/coremobility/integration/h;-><init>()V

    iget-object v0, p0, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    :cond_1d
    iget-object v0, p0, Lcom/coremobility/e/ax;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;Lcom/coremobility/integration/h;)I

    move-result v3

    if-nez v3, :cond_e6

    new-instance v4, Lcom/coremobility/integration/r;

    invoke-direct {v4}, Lcom/coremobility/integration/r;-><init>()V

    invoke-static {v2, v4}, Lcom/coremobility/integration/file/a;->b(Lcom/coremobility/integration/h;Lcom/coremobility/integration/r;)I

    move-result v0

    if-nez v0, :cond_3d

    iget v5, v4, Lcom/coremobility/integration/r;->a:I

    if-lez v5, :cond_3d

    iget v5, v4, Lcom/coremobility/integration/r;->a:I

    if-ge v5, v6, :cond_3d

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;II)I

    move-result v0

    :cond_3d
    if-nez v0, :cond_9c

    iget v5, v4, Lcom/coremobility/integration/r;->a:I

    if-ge v5, v6, :cond_9c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v4, Lcom/coremobility/integration/r;->a:I

    if-lez v5, :cond_51

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_51
    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    invoke-static {}, Lcom/coremobility/f/m;->f()I

    move-result v5

    cmp-long v6, p1, v7

    if-lez v6, :cond_ab

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_70

    const-string v5, "R"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_70
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_78
    :goto_78
    invoke-static {}, Lcom/coremobility/g/m;->a()Lcom/coremobility/g/m;

    invoke-static {}, Lcom/coremobility/g/m;->b()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iput v5, v4, Lcom/coremobility/integration/r;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0, v4}, Lcom/coremobility/integration/file/a;->d(Lcom/coremobility/integration/h;[BLcom/coremobility/integration/r;)I

    move-result v0

    :cond_9c
    :goto_9c
    if-nez v3, :cond_a6

    invoke-static {v2}, Lcom/coremobility/integration/file/a;->a(Lcom/coremobility/integration/h;)I

    move-result v2

    if-nez v2, :cond_a6

    if-eqz v0, :cond_d

    :cond_a6
    invoke-static {v1}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto/16 :goto_d

    :cond_ab
    if-eqz p3, :cond_b8

    const-string v5, "P"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    :cond_b8
    if-eqz p4, :cond_cd

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "S"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    :cond_cd
    if-eqz p5, :cond_78

    cmp-long v6, p1, v7

    if-nez v6, :cond_78

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "M"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_78

    :cond_e6
    move v0, v1

    goto :goto_9c
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/coremobility/e/ax;->a:Ljava/lang/String;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/coremobility/e/ax;->b:Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/ax;->b:Ljava/lang/String;

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/e/ax;->c:Z

    iget-object v0, p0, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    if-nez v0, :cond_19

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    :cond_19
    iget-object v0, p0, Lcom/coremobility/e/ax;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    goto :goto_4
.end method

.method public final a(I)V
    .registers 8

    const/4 v3, 0x0

    int-to-long v1, p1

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/e/ax;->a(JZZZ)V

    return-void
.end method

.method protected final a(J)V
    .registers 9

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/e/ax;->a(JZZZ)V

    return-void
.end method

.method public final a(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/coremobility/e/ax;->c:Z

    iget-boolean v0, p0, Lcom/coremobility/e/ax;->c:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/e/ax;->d:Lcom/coremobility/integration/file/a;

    goto :goto_c
.end method

.method public final b()V
    .registers 7

    const/4 v3, 0x0

    const-wide/16 v1, 0x50

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/e/ax;->a(JZZZ)V

    return-void
.end method

.method public final c()V
    .registers 7

    const/4 v4, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/e/ax;->a(JZZZ)V

    return-void
.end method

.method public final d()V
    .registers 7

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/e/ax;->a(JZZZ)V

    return-void
.end method

.method public final e()V
    .registers 7

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/e/ax;->a(JZZZ)V

    return-void
.end method
