.class public Ls/C;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;JFF)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls/C;->a:Ljava/lang/String;

    iput-wide p2, p0, Ls/C;->b:J

    iput p4, p0, Ls/C;->c:F

    iput p5, p0, Ls/C;->d:F

    return-void
.end method

.method public constructor <init>(Ls/C;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Ls/C;->a:Ljava/lang/String;

    iput-object v0, p0, Ls/C;->a:Ljava/lang/String;

    iget-wide v0, p1, Ls/C;->b:J

    iput-wide v0, p0, Ls/C;->b:J

    iget v0, p1, Ls/C;->c:F

    iput v0, p0, Ls/C;->c:F

    iget v0, p1, Ls/C;->d:F

    iput v0, p0, Ls/C;->d:F

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ls/C;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .registers 2

    iput p1, p0, Ls/C;->c:F

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Ls/C;->b:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ls/C;->a:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Ls/C;->b:J

    return-wide v0
.end method

.method public b(F)V
    .registers 2

    iput p1, p0, Ls/C;->d:F

    return-void
.end method

.method public c()F
    .registers 2

    iget v0, p0, Ls/C;->c:F

    return v0
.end method

.method public d()F
    .registers 2

    iget v0, p0, Ls/C;->d:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls/C;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ls/C;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ls/C;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
