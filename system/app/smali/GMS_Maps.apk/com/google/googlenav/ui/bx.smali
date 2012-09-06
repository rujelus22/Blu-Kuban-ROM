.class public Lcom/google/googlenav/ui/bx;
.super Lcom/google/googlenav/ui/ag;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/googlenav/ui/ag;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/googlenav/ui/bx;->a:Ljava/lang/String;

    .line 68
    iput p2, p0, Lcom/google/googlenav/ui/bx;->b:I

    .line 69
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lcom/google/googlenav/ui/bx;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 81
    instance-of v1, p1, Lcom/google/googlenav/ui/bx;

    if-nez v1, :cond_6

    .line 85
    :cond_5
    :goto_5
    return v0

    .line 84
    :cond_6
    check-cast p1, Lcom/google/googlenav/ui/bx;

    .line 85
    iget v1, p1, Lcom/google/googlenav/ui/bx;->b:I

    iget v2, p0, Lcom/google/googlenav/ui/bx;->b:I

    if-ne v1, v2, :cond_5

    iget-object v1, p1, Lcom/google/googlenav/ui/bx;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/googlenav/ui/bx;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/googlenav/ui/bx;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/bx;->b:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/ui/bx;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/googlenav/ui/bx;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
