.class LT/i;
.super LT/f;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private h:LS/f;

.field private i:LT/f;


# direct methods
.method public constructor <init>(LT/f;IIIIII)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-direct {p0}, LT/f;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, LT/i;->i:LT/f;

    .line 45
    invoke-virtual {p1}, LT/f;->e()LS/f;

    move-result-object v0

    iput-object v0, p0, LT/i;->h:LS/f;

    .line 47
    iput p2, p0, LT/i;->b:I

    .line 48
    iput p3, p0, LT/i;->c:I

    .line 49
    iput p4, p0, LT/i;->d:I

    .line 50
    iput p5, p0, LT/i;->e:I

    .line 51
    iput p6, p0, LT/i;->f:I

    .line 52
    iput p7, p0, LT/i;->g:I

    .line 53
    return-void
.end method

.method private i()V
    .registers 3

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, LT/i;->h:LS/f;

    .line 86
    const/4 v1, 0x0

    iput-object v1, p0, LT/i;->h:LS/f;

    .line 87
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_d

    .line 88
    if-eqz v0, :cond_c

    .line 89
    invoke-interface {v0}, LS/f;->f()V

    .line 91
    :cond_c
    return-void

    .line 87
    :catchall_d
    move-exception v0

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw v0
.end method

.method private j()LT/f;
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 94
    iget-object v0, p0, LT/i;->i:LT/f;

    if-nez v0, :cond_4a

    .line 95
    new-instance v0, LT/f;

    iget v1, p0, LT/i;->b:I

    iget v3, p0, LT/i;->c:I

    invoke-direct {v0, v1, v3}, LT/f;-><init>(II)V

    iput-object v0, p0, LT/i;->i:LT/f;

    .line 96
    iget-object v0, p0, LT/i;->i:LT/f;

    invoke-virtual {v0}, LT/f;->c()LS/e;

    move-result-object v0

    iget-object v1, p0, LT/i;->h:LS/f;

    iget v4, p0, LT/i;->b:I

    iget v5, p0, LT/i;->c:I

    iget v6, p0, LT/i;->d:I

    iget v7, p0, LT/i;->e:I

    iget v8, p0, LT/i;->f:I

    iget v9, p0, LT/i;->g:I

    move v3, v2

    invoke-interface/range {v0 .. v9}, LS/e;->a(LS/f;IIIIIIII)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Graphics cannot scale image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, LT/i;->i:LT/f;

    invoke-virtual {v2}, LT/f;->c()LS/e;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_4a
    iget-object v0, p0, LT/i;->i:LT/f;

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 158
    iget v0, p0, LT/i;->b:I

    return v0
.end method

.method public a(II)LS/f;
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 106
    invoke-direct {p0}, LT/i;->j()LT/f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LT/f;->a(II)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public a(IIIIII)LS/f;
    .registers 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    invoke-direct {p0}, LT/i;->j()LT/f;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, LT/f;->a(IIIIII)LS/f;

    move-result-object v0

    return-object v0
.end method

.method public a(LS/e;II)V
    .registers 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, LT/i;->i:LT/f;

    if-nez v0, :cond_19

    .line 118
    iget-object v1, p0, LT/i;->h:LS/f;

    iget v4, p0, LT/i;->b:I

    iget v5, p0, LT/i;->c:I

    iget v6, p0, LT/i;->d:I

    iget v7, p0, LT/i;->e:I

    iget v8, p0, LT/i;->f:I

    iget v9, p0, LT/i;->g:I

    move-object v0, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v9}, LS/e;->a(LS/f;IIIIIIII)Z

    .line 122
    :goto_18
    return-void

    .line 120
    :cond_19
    iget-object v0, p0, LT/i;->i:LT/f;

    invoke-virtual {v0, p1, p2, p3}, LT/f;->a(LS/e;II)V

    goto :goto_18
.end method

.method public a([IIIIIII)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 153
    invoke-direct {p0}, LT/i;->j()LT/f;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, LT/f;->a([IIIIIII)V

    .line 154
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, LT/i;->c:I

    return v0
.end method

.method public c()LS/e;
    .registers 2

    .prologue
    .line 142
    invoke-direct {p0}, LT/i;->j()LT/f;

    move-result-object v0

    invoke-virtual {v0}, LT/f;->c()LS/e;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    .prologue
    .line 72
    iget v0, p0, LT/i;->a:I

    if-gtz v0, :cond_7

    .line 73
    invoke-direct {p0}, LT/i;->i()V

    .line 75
    :cond_7
    invoke-super {p0}, LT/f;->d()V

    .line 76
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 131
    invoke-direct {p0}, LT/i;->i()V

    .line 132
    invoke-super {p0}, LT/f;->finalize()V

    .line 133
    return-void
.end method

.method public g()I
    .registers 3

    .prologue
    .line 58
    const/16 v0, 0x20

    .line 59
    iget-object v1, p0, LT/i;->i:LT/f;

    if-eqz v1, :cond_d

    .line 60
    iget-object v1, p0, LT/i;->i:LT/f;

    invoke-virtual {v1}, LT/f;->g()I

    move-result v1

    add-int/2addr v0, v1

    .line 62
    :cond_d
    return v0
.end method

.method public h()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 137
    invoke-direct {p0}, LT/i;->j()LT/f;

    move-result-object v0

    invoke-virtual {v0}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
