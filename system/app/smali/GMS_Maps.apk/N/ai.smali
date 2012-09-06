.class public final Ln/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ln/U;

.field private final b:I

.field private final c:I


# direct methods
.method public constructor <init>(Ln/U;I)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Ln/ai;->a:Ln/U;

    .line 17
    iput p2, p0, Ln/ai;->b:I

    .line 18
    invoke-virtual {p1}, Ln/U;->b()I

    move-result v0

    iput v0, p0, Ln/ai;->c:I

    .line 19
    return-void
.end method

.method public constructor <init>(Ln/U;II)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Ln/ai;->a:Ln/U;

    .line 23
    iput p2, p0, Ln/ai;->b:I

    .line 24
    iput p3, p0, Ln/ai;->c:I

    .line 25
    return-void
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 39
    iget v0, p0, Ln/ai;->c:I

    iget v1, p0, Ln/ai;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(I)Ln/Q;
    .registers 4
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Ln/ai;->a:Ln/U;

    iget v1, p0, Ln/ai;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v0

    return-object v0
.end method

.method public a(ILn/Q;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Ln/ai;->a:Ln/U;

    iget v1, p0, Ln/ai;->b:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Ln/U;->a(ILn/Q;)V

    .line 48
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Ln/ai;->b:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Ln/ai;->c:I

    return v0
.end method

.method public d()Ln/U;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Ln/ai;->a:Ln/U;

    return-object v0
.end method

.method public e()Ln/U;
    .registers 7

    .prologue
    .line 94
    invoke-virtual {p0}, Ln/ai;->a()I

    move-result v1

    .line 95
    mul-int/lit8 v0, v1, 0x3

    new-array v2, v0, [I

    .line 96
    new-instance v3, Ln/Q;

    invoke-direct {v3}, Ln/Q;-><init>()V

    .line 97
    const/4 v0, 0x0

    :goto_e
    if-ge v0, v1, :cond_1e

    .line 98
    iget-object v4, p0, Ln/ai;->a:Ln/U;

    iget v5, p0, Ln/ai;->b:I

    add-int/2addr v5, v0

    invoke-virtual {v4, v5, v3}, Ln/U;->a(ILn/Q;)V

    .line 99
    invoke-virtual {v3, v2, v0}, Ln/Q;->a([II)V

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 101
    :cond_1e
    invoke-static {v2}, Ln/U;->a([I)Ln/U;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    if-ne p1, p0, :cond_5

    .line 72
    :cond_4
    :goto_4
    return v0

    .line 67
    :cond_5
    instance-of v2, p1, Ln/ai;

    if-eqz v2, :cond_23

    .line 68
    check-cast p1, Ln/ai;

    .line 69
    iget v2, p1, Ln/ai;->b:I

    iget v3, p0, Ln/ai;->b:I

    if-ne v2, v3, :cond_21

    iget v2, p1, Ln/ai;->c:I

    iget v3, p0, Ln/ai;->c:I

    if-ne v2, v3, :cond_21

    iget-object v2, p1, Ln/ai;->a:Ln/U;

    iget-object v3, p0, Ln/ai;->a:Ln/U;

    invoke-virtual {v2, v3}, Ln/U;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4

    :cond_23
    move v0, v1

    .line 72
    goto :goto_4
.end method

.method public f()Ln/aa;
    .registers 8

    .prologue
    .line 108
    iget-object v0, p0, Ln/ai;->a:Ln/U;

    iget v1, p0, Ln/ai;->b:I

    invoke-virtual {v0, v1}, Ln/U;->a(I)Ln/Q;

    move-result-object v5

    .line 109
    iget v2, v5, Ln/Q;->a:I

    .line 111
    iget v1, v5, Ln/Q;->b:I

    .line 114
    iget v0, p0, Ln/ai;->b:I

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    move v4, v2

    move v2, v1

    :goto_13
    iget v6, p0, Ln/ai;->c:I

    if-ge v0, v6, :cond_37

    .line 115
    iget-object v6, p0, Ln/ai;->a:Ln/U;

    invoke-virtual {v6, v0, v5}, Ln/U;->a(ILn/Q;)V

    .line 116
    iget v6, v5, Ln/Q;->a:I

    if-ge v6, v4, :cond_22

    .line 117
    iget v4, v5, Ln/Q;->a:I

    .line 119
    :cond_22
    iget v6, v5, Ln/Q;->a:I

    if-le v6, v3, :cond_28

    .line 120
    iget v3, v5, Ln/Q;->a:I

    .line 122
    :cond_28
    iget v6, v5, Ln/Q;->b:I

    if-ge v6, v2, :cond_2e

    .line 123
    iget v2, v5, Ln/Q;->b:I

    .line 125
    :cond_2e
    iget v6, v5, Ln/Q;->b:I

    if-le v6, v1, :cond_34

    .line 126
    iget v1, v5, Ln/Q;->b:I

    .line 114
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 130
    :cond_37
    invoke-virtual {v5, v4, v2}, Ln/Q;->d(II)V

    .line 131
    new-instance v0, Ln/Q;

    invoke-direct {v0, v3, v1}, Ln/Q;-><init>(II)V

    .line 132
    new-instance v1, Ln/aa;

    invoke-direct {v1, v5, v0}, Ln/aa;-><init>(Ln/Q;Ln/Q;)V

    return-object v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 77
    .line 79
    iget v0, p0, Ln/ai;->b:I

    add-int/lit8 v0, v0, 0x1f

    .line 80
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Ln/ai;->c:I

    add-int/2addr v0, v1

    .line 81
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Ln/ai;->a:Ln/U;

    invoke-virtual {v1}, Ln/U;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 82
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/ai;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ln/ai;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln/ai;->a:Ln/U;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
