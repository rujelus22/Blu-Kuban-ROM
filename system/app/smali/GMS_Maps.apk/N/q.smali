.class public Ln/q;
.super Ln/m;
.source "SourceFile"


# instance fields
.field protected final b:Ln/s;

.field protected final c:I


# direct methods
.method constructor <init>(Ln/s;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 415
    invoke-direct {p0}, Ln/m;-><init>()V

    .line 416
    iput-object p1, p0, Ln/q;->b:Ln/s;

    .line 417
    iput p2, p0, Ln/q;->c:I

    .line 418
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 426
    invoke-virtual {p0}, Ln/q;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 3
    .parameter

    .prologue
    .line 464
    invoke-virtual {p0, p1}, Ln/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ln/q;->b:Ln/s;

    invoke-virtual {v1}, Ln/s;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/q;->b:Ln/s;

    invoke-virtual {v1}, Ln/s;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/q;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 452
    instance-of v1, p1, Ln/q;

    if-eqz v1, :cond_18

    .line 453
    check-cast p1, Ln/q;

    .line 454
    iget-object v1, p1, Ln/q;->b:Ln/s;

    iget-object v2, p0, Ln/q;->b:Ln/s;

    invoke-virtual {v1, v2}, Ln/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p1, Ln/q;->c:I

    iget v2, p0, Ln/q;->c:I

    if-ne v1, v2, :cond_18

    const/4 v0, 0x1

    .line 456
    :cond_18
    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 443
    invoke-virtual {p0}, Ln/q;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
