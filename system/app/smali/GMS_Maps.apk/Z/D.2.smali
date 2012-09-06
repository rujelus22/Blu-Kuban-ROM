.class public Lz/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:[F


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lz/D;->a:[F

    .line 23
    return-void
.end method

.method public constructor <init>(FFF)V
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lz/D;->a:[F

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lz/D;->a(FFF)V

    .line 30
    return-void
.end method


# virtual methods
.method public a(FFF)V
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lz/D;->a:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 44
    iget-object v0, p0, Lz/D;->a:[F

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 45
    iget-object v0, p0, Lz/D;->a:[F

    const/4 v1, 0x2

    aput p3, v0, v1

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lz/D;->a:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lz/D;->a:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lz/D;->a:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
