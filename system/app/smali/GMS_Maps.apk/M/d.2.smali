.class public Lm/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>(Ljava/lang/String;JFF)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lm/D;->a:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lm/D;->b:J

    .line 18
    iput p4, p0, Lm/D;->c:F

    .line 19
    iput p5, p0, Lm/D;->d:F

    .line 20
    return-void
.end method

.method public constructor <init>(Lm/D;)V
    .registers 4
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget-object v0, p1, Lm/D;->a:Ljava/lang/String;

    iput-object v0, p0, Lm/D;->a:Ljava/lang/String;

    .line 25
    iget-wide v0, p1, Lm/D;->b:J

    iput-wide v0, p0, Lm/D;->b:J

    .line 26
    iget v0, p1, Lm/D;->c:F

    iput v0, p0, Lm/D;->c:F

    .line 27
    iget v0, p1, Lm/D;->d:F

    iput v0, p0, Lm/D;->d:F

    .line 28
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lm/D;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(F)V
    .registers 2
    .parameter

    .prologue
    .line 65
    iput p1, p0, Lm/D;->c:F

    .line 66
    return-void
.end method

.method public a(J)V
    .registers 3
    .parameter

    .prologue
    .line 52
    iput-wide p1, p0, Lm/D;->b:J

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lm/D;->a:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public b()J
    .registers 3

    .prologue
    .line 57
    iget-wide v0, p0, Lm/D;->b:J

    return-wide v0
.end method

.method public b(F)V
    .registers 2
    .parameter

    .prologue
    .line 80
    iput p1, p0, Lm/D;->d:F

    .line 81
    return-void
.end method

.method public c()F
    .registers 2

    .prologue
    .line 72
    iget v0, p0, Lm/D;->c:F

    return v0
.end method

.method public d()F
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lm/D;->d:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm/D;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lm/D;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " orientation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lm/D;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
