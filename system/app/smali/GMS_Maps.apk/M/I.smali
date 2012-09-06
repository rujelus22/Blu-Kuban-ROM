.class Lm/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field a:D

.field b:D

.field c:D

.field d:D

.field e:D

.field f:Lr/ak;

.field g:Lm/j;

.field h:Lo/B;

.field i:D

.field j:Ln/Q;

.field k:I


# direct methods
.method constructor <init>(ILr/ak;Lm/j;Lt/k;)V
    .registers 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    iput p1, p0, Lm/i;->k:I

    .line 930
    iput-object p2, p0, Lm/i;->f:Lr/ak;

    .line 931
    iput-object p3, p0, Lm/i;->g:Lm/j;

    .line 934
    new-instance v0, Ln/Q;

    invoke-direct {v0}, Ln/Q;-><init>()V

    iput-object v0, p0, Lm/i;->j:Ln/Q;

    .line 935
    invoke-virtual {p2}, Lr/ak;->c()Ln/Q;

    move-result-object v0

    invoke-virtual {p2}, Lr/ak;->d()Ln/Q;

    move-result-object v1

    iget-object v2, p3, Lm/j;->d:Ln/Q;

    const/4 v3, 0x1

    iget-object v4, p0, Lm/i;->j:Ln/Q;

    invoke-static {v0, v1, v2, v3, v4}, Ln/Q;->a(Ln/Q;Ln/Q;Ln/Q;ZLn/Q;)V

    .line 936
    invoke-virtual {p2}, Lr/ak;->c()Ln/Q;

    move-result-object v0

    invoke-virtual {p2}, Lr/ak;->d()Ln/Q;

    move-result-object v1

    iget-object v2, p0, Lm/i;->j:Ln/Q;

    invoke-static {v0, v1, v2}, Ln/Q;->d(Ln/Q;Ln/Q;Ln/Q;)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lm/i;->i:D

    .line 940
    invoke-virtual {p2}, Lr/ak;->b()Ln/ac;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lm/i;->j:Ln/Q;

    iget-object v2, p0, Lm/i;->f:Lr/ak;

    invoke-virtual {v2}, Lr/ak;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p3, v1, v2, v3, v0}, Lm/j;->a(Ln/Q;DLn/ac;)D

    move-result-wide v0

    iput-wide v0, p0, Lm/i;->c:D

    .line 943
    invoke-virtual {p4}, Lt/k;->a()D

    move-result-wide v0

    iput-wide v0, p0, Lm/i;->d:D

    .line 944
    return-void
.end method

.method private a(Ljava/text/DecimalFormat;D)Ljava/lang/String;
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 1019
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

    .prologue
    .line 963
    iget-wide v0, p0, Lm/i;->a:D

    return-wide v0
.end method

.method a(Z)D
    .registers 7
    .parameter

    .prologue
    .line 947
    iget-wide v0, p0, Lm/i;->c:D

    iget-wide v2, p0, Lm/i;->d:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lm/i;->a:D

    .line 948
    if-eqz p1, :cond_3e

    .line 950
    iget-object v0, p0, Lm/i;->g:Lm/j;

    iget-object v1, p0, Lm/i;->j:Ln/Q;

    iget-object v2, p0, Lm/i;->f:Lr/ak;

    invoke-virtual {v2}, Lr/ak;->e()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lm/j;->a(Ln/Q;D)Lo/B;

    move-result-object v0

    iput-object v0, p0, Lm/i;->h:Lo/B;

    .line 952
    iget-object v0, p0, Lm/i;->h:Lo/B;

    if-eqz v0, :cond_3e

    .line 953
    iget-object v0, p0, Lm/i;->g:Lm/j;

    iget-object v1, p0, Lm/i;->h:Lo/B;

    iget-object v2, p0, Lm/i;->j:Ln/Q;

    iget-object v3, p0, Lm/i;->f:Lr/ak;

    invoke-virtual {v3}, Lr/ak;->e()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lm/j;->a(Lo/B;Ln/Q;D)D

    move-result-wide v0

    iput-wide v0, p0, Lm/i;->b:D

    .line 955
    iget-wide v0, p0, Lm/i;->a:D

    iget-object v2, p0, Lm/i;->g:Lm/j;

    iget-wide v3, p0, Lm/i;->b:D

    invoke-virtual {v2, v3, v4}, Lm/j;->b(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lm/i;->a:D

    .line 959
    :cond_3e
    iget-wide v0, p0, Lm/i;->a:D

    return-wide v0
.end method

.method public a(Lm/i;)I
    .registers 6
    .parameter

    .prologue
    .line 996
    iget-wide v0, p0, Lm/i;->a:D

    iget-wide v2, p1, Lm/i;->a:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 997
    const/4 v0, -0x1

    .line 1001
    :goto_9
    return v0

    .line 998
    :cond_a
    iget-wide v0, p0, Lm/i;->a:D

    iget-wide v2, p1, Lm/i;->a:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_14

    .line 999
    const/4 v0, 0x1

    goto :goto_9

    .line 1001
    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method a(D)V
    .registers 5
    .parameter

    .prologue
    .line 967
    iget-wide v0, p0, Lm/i;->a:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Lm/i;->a:D

    .line 968
    return-void
.end method

.method b()V
    .registers 5

    .prologue
    .line 985
    iget-wide v0, p0, Lm/i;->d:D

    iget-wide v2, p0, Lm/i;->e:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lm/i;->d:D

    .line 986
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lm/i;->e:D

    .line 987
    return-void
.end method

.method b(D)V
    .registers 5
    .parameter

    .prologue
    .line 975
    iget-wide v0, p0, Lm/i;->e:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_8

    .line 976
    iput-wide p1, p0, Lm/i;->e:D

    .line 978
    :cond_8
    return-void
.end method

.method c()V
    .registers 3

    .prologue
    .line 991
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lm/i;->d:D

    .line 992
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter

    .prologue
    .line 885
    check-cast p1, Lm/i;

    invoke-virtual {p0, p1}, Lm/i;->a(Lm/i;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1007
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Candidate[id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lm/i;->k:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",L:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lm/i;->a:D

    invoke-direct {p0, v0, v2, v3}, Lm/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",OnRouteL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lm/i;->b:D

    invoke-direct {p0, v0, v2, v3}, Lm/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",EmitL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lm/i;->c:D

    invoke-direct {p0, v0, v2, v3}, Lm/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",TransL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lm/i;->d:D

    invoke-direct {p0, v0, v2, v3}, Lm/i;->a(Ljava/text/DecimalFormat;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",Pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm/i;->i:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",B:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm/i;->f:Lr/ak;

    invoke-virtual {v1}, Lr/ak;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",P:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm/i;->j:Ln/Q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
