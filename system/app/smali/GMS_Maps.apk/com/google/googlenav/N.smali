.class public Lcom/google/googlenav/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/googlenav/F;


# instance fields
.field private a:B

.field private b:Lcom/google/googlenav/F;

.field private c:Lcom/google/googlenav/F;


# direct methods
.method public constructor <init>(Lcom/google/googlenav/F;Lcom/google/googlenav/F;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    .line 30
    iput-object p2, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/F;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    return-object v0
.end method

.method public a(B)V
    .registers 3
    .parameter

    .prologue
    .line 95
    iput-byte p1, p0, Lcom/google/googlenav/n;->a:B

    .line 98
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->a(B)V

    .line 99
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->a(B)V

    .line 100
    return-void
.end method

.method public a(I)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 56
    if-gez p1, :cond_14

    .line 57
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(I)V

    .line 58
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(I)V

    .line 68
    :goto_d
    if-gez p1, :cond_3a

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/n;->a(B)V

    .line 77
    :cond_13
    :goto_13
    return-void

    .line 59
    :cond_14
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    if-ge p1, v0, :cond_27

    .line 60
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->a(I)V

    .line 61
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(I)V

    goto :goto_d

    .line 63
    :cond_27
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(I)V

    .line 64
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    iget-object v1, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->a(I)V

    goto :goto_d

    .line 73
    :cond_3a
    invoke-virtual {p0}, Lcom/google/googlenav/n;->d()B

    move-result v0

    if-nez v0, :cond_13

    .line 74
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/googlenav/n;->a(B)V

    goto :goto_13
.end method

.method public b(I)Lcom/google/googlenav/E;
    .registers 4
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    .line 111
    if-ge p1, v0, :cond_f

    .line 112
    :try_start_8
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0, p1}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;

    move-result-object v0

    .line 117
    :goto_e
    return-object v0

    .line 114
    :cond_f
    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    sub-int v0, p1, v0

    invoke-interface {v1, v0}, Lcom/google/googlenav/F;->b(I)Lcom/google/googlenav/E;
    :try_end_16
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_16} :catch_18

    move-result-object v0

    goto :goto_e

    .line 116
    :catch_18
    move-exception v0

    .line 117
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public b()Lcom/google/googlenav/F;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    return-object v0
.end method

.method public c()I
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 81
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 82
    if-eq v0, v1, :cond_a

    .line 90
    :goto_9
    return v0

    .line 85
    :cond_a
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    .line 86
    if-eq v0, v1, :cond_1a

    .line 87
    iget-object v1, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_9

    :cond_1a
    move v0, v1

    .line 90
    goto :goto_9
.end method

.method public c(I)I
    .registers 4
    .parameter

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    .line 127
    if-ge p1, v1, :cond_16

    .line 128
    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v1, p1}, Lcom/google/googlenav/F;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :goto_15
    return v0

    .line 130
    :cond_16
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/google/googlenav/F;->c(I)I
    :try_end_1d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result v0

    goto :goto_15

    .line 132
    :catch_1f
    move-exception v0

    .line 133
    const/4 v0, -0x1

    goto :goto_15
.end method

.method public d()B
    .registers 2

    .prologue
    .line 104
    iget-byte v0, p0, Lcom/google/googlenav/n;->a:B

    return v0
.end method

.method public e()Lcom/google/googlenav/E;
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 140
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    .line 142
    :goto_f
    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->e()Lcom/google/googlenav/E;

    move-result-object v0

    goto :goto_f
.end method

.method public f()I
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/googlenav/n;->b:Lcom/google/googlenav/F;

    invoke-interface {v0}, Lcom/google/googlenav/F;->f()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/n;->c:Lcom/google/googlenav/F;

    invoke-interface {v1}, Lcom/google/googlenav/F;->f()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
