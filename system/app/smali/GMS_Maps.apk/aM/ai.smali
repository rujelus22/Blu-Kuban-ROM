.class public LaM/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:LaM/i;

.field private final b:Lcom/google/googlenav/E;

.field private final c:I

.field private final d:Z

.field private e:J

.field private f:Z


# direct methods
.method private constructor <init>(LaM/i;Lcom/google/googlenav/E;IJZ)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, LaM/ai;->a:LaM/i;

    .line 53
    iput-object p2, p0, LaM/ai;->b:Lcom/google/googlenav/E;

    .line 54
    iput p3, p0, LaM/ai;->c:I

    .line 55
    iput-wide p4, p0, LaM/ai;->e:J

    .line 56
    iput-boolean p6, p0, LaM/ai;->d:Z

    .line 58
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, LaM/i;->ax()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 59
    iget-wide v0, p0, LaM/ai;->e:J

    sget v2, LaM/am;->j:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, LaM/ai;->e:J

    .line 61
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, LaM/ai;->f:Z

    .line 62
    return-void
.end method

.method public static a(J)LaM/ai;
    .registers 9
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, LaM/ai;

    const/4 v3, -0x1

    const/4 v6, 0x1

    move-object v2, v1

    move-wide v4, p0

    invoke-direct/range {v0 .. v6}, LaM/ai;-><init>(LaM/i;Lcom/google/googlenav/E;IJZ)V

    return-object v0
.end method

.method public static a(LaM/i;Lcom/google/googlenav/E;IJ)LaM/ai;
    .registers 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, LaM/ai;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v6}, LaM/ai;-><init>(LaM/i;Lcom/google/googlenav/E;IJZ)V

    return-object v0
.end method


# virtual methods
.method public a()LaM/i;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, LaM/ai;->a:LaM/i;

    return-object v0
.end method

.method public a(Z)V
    .registers 2
    .parameter

    .prologue
    .line 89
    iput-boolean p1, p0, LaM/ai;->f:Z

    .line 90
    return-void
.end method

.method public b()Lcom/google/googlenav/E;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, LaM/ai;->b:Lcom/google/googlenav/E;

    return-object v0
.end method

.method public b(J)V
    .registers 3
    .parameter

    .prologue
    .line 81
    iput-wide p1, p0, LaM/ai;->e:J

    .line 82
    return-void
.end method

.method public c()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, LaM/ai;->c:I

    return v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 77
    iget-wide v0, p0, LaM/ai;->e:J

    return-wide v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 85
    iget-boolean v0, p0, LaM/ai;->f:Z

    return v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, LaM/ai;->d:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "layer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaM/ai;->a:LaM/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", feature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LaM/ai;->b:Lcom/google/googlenav/E;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LaM/ai;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pixelDistanceSquared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, LaM/ai;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
