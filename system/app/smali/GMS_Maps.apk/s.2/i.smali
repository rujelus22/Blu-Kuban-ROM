.class Ls/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:D

.field e:D

.field f:Lx/al;

.field g:Ls/j;

.field h:Lu/B;

.field i:D

.field j:Lt/L;

.field k:I


# direct methods
.method constructor <init>(ILx/al;Ls/j;Lz/l;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls/i;->k:I

    iput-object p2, p0, Ls/i;->f:Lx/al;

    iput-object p3, p0, Ls/i;->g:Ls/j;

    new-instance v0, Lt/L;

    invoke-direct {v0}, Lt/L;-><init>()V

    iput-object v0, p0, Ls/i;->j:Lt/L;

    invoke-virtual {p2}, Lx/al;->c()Lt/L;

    move-result-object v0

    invoke-virtual {p2}, Lx/al;->d()Lt/L;

    move-result-object v1

    iget-object v2, p3, Ls/j;->d:Lt/L;

    const/4 v3, 0x1

    iget-object v4, p0, Ls/i;->j:Lt/L;

    invoke-static {v0, v1, v2, v3, v4}, Lt/L;->a(Lt/L;Lt/L;Lt/L;ZLt/L;)V

    invoke-virtual {p2}, Lx/al;->c()Lt/L;

    move-result-object v0

    invoke-virtual {p2}, Lx/al;->d()Lt/L;

    move-result-object v1

    iget-object v2, p0, Ls/i;->j:Lt/L;

    invoke-static {v0, v1, v2}, Lt/L;->d(Lt/L;Lt/L;Lt/L;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Ls/i;->i:D

    invoke-virtual {p2}, Lx/al;->b()Lt/X;

    move-result-object v0

    iget-object v1, p0, Ls/i;->j:Lt/L;

    iget-object v2, p0, Ls/i;->f:Lx/al;

    invoke-virtual {v2}, Lx/al;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p3, v1, v2, v3, v0}, Ls/j;->a(Lt/L;DLt/X;)D

    move-result-wide v0

    iput-wide v0, p0, Ls/i;->c:D

    invoke-virtual {p4}, Lz/l;->a()D

    move-result-wide v0

    iput-wide v0, p0, Ls/i;->d:D

    return-void
.end method

.method private a(Ljava/text/DecimalFormat;D)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmpl-double v0, p2, v0

    if-nez v0, :cond_9

    const-string v0, "-inf"

    :goto_8
    return-object v0

    :cond_9
    invoke-static {p2, p3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method


# virtual methods
.method a()D
    .registers 3

    iget-wide v0, p0, Ls/i;->a:D

    return-wide v0
.end method

.method a(Z)D
    .registers 7

    iget-wide v0, p0, Ls/i;->c:D

    iget-wide v2, p0, Ls/i;->d:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ls/i;->a:D

    if-eqz p1, :cond_3e

    iget-object v0, p0, Ls/i;->g:Ls/j;

    iget-object v1, p0, Ls/i;->j:Lt/L;

    iget-object v2, p0, Ls/i;->f:Lx/al;

    invoke-virtual {v2}, Lx/al;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ls/j;->a(Lt/L;D)Lu/B;

    move-result-object v0

    iput-object v0, p0, Ls/i;->h:Lu/B;

    iget-object v0, p0, Ls/i;->h:Lu/B;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Ls/i;->g:Ls/j;

    iget-object v1, p0, Ls/i;->h:Lu/B;

    iget-object v2, p0, Ls/i;->j:Lt/L;

    iget-object v3, p0, Ls/i;->f:Lx/al;

    invoke-virtual {v3}, Lx/al;->e()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Ls/j;->a(Lu/B;Lt/L;D)D

    move-result-wide v0

    iput-wide v0, p0, Ls/i;->b:D

    iget-wide v0, p0, Ls/i;->a:D

    iget-object v2, p0, Ls/i;->g:Ls/j;

    iget-wide v3, p0, Ls/i;->b:D

    invoke-virtual {v2, v3, v4}, Ls/j;->b(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Ls/i;->a:D

    :cond_3e
    iget-wide v0, p0, Ls/i;->a:D

    return-wide v0
.end method

.method public a(Ls/i;)I
    .registers 6

    iget-wide v0, p0, Ls/i;->a:D

    iget-wide v2, p1, Ls/i;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, -0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p0, Ls/i;->a:D

    iget-wide v2, p1, Ls/i;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    const/4 v0, 0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method a(D)V
    .registers 5

    iget-wide v0, p0, Ls/i;->a:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Ls/i;->a:D

    return-void
.end method

.method b()V
    .registers 5

    iget-wide v0, p0, Ls/i;->d:D

    iget-wide v2, p0, Ls/i;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Ls/i;->d:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls/i;->e:D

    return-void
.end method

.method b(D)V
    .registers 5

    iget-wide v0, p0, Ls/i;->e:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_8

    iput-wide p1, p0, Ls/i;->e:D

    :cond_8
    return-void
.end method

.method c()V
    .registers 3

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Ls/i;->d:D

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ls/i;

    invoke-virtual {p0, p1}, Ls/i;->a(Ls/i;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Candidate[id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ls/i;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",L:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ls/i;->a:D

    invoke-direct {p0, v0, v2, v3}, Ls/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",OnRouteL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ls/i;->b:D

    invoke-direct {p0, v0, v2, v3}, Ls/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",EmitL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ls/i;->c:D

    invoke-direct {p0, v0, v2, v3}, Ls/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TransL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Ls/i;->d:D

    invoke-direct {p0, v0, v2, v3}, Ls/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/i;->i:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls/i;->f:Lx/al;

    invoke-virtual {v1}, Lx/al;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls/i;->j:Lt/L;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
