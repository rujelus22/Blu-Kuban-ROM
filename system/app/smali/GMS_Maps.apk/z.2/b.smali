.class public LZ/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:J

.field private final f:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(IIIIJLandroid/graphics/Point;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput p1, p0, LZ/b;->a:I

    .line 83
    iput p2, p0, LZ/b;->b:I

    .line 84
    iput p3, p0, LZ/b;->c:I

    .line 85
    iput p4, p0, LZ/b;->d:I

    .line 86
    iput-wide p5, p0, LZ/b;->e:J

    .line 87
    iput-object p7, p0, LZ/b;->f:Landroid/graphics/Point;

    .line 88
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 2

    .prologue
    .line 94
    iget v0, p0, LZ/b;->a:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 103
    iget v1, p0, LZ/b;->a:I

    if-ne v0, v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public c()Z
    .registers 3

    .prologue
    .line 112
    const/4 v0, 0x2

    iget v1, p0, LZ/b;->a:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public d()Z
    .registers 2

    .prologue
    .line 120
    invoke-virtual {p0}, LZ/b;->a()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, LZ/b;->b()Z

    move-result v0

    return v0
.end method

.method public f()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 139
    iget v1, p0, LZ/b;->b:I

    if-eq v0, v1, :cond_a

    const/4 v1, 0x2

    iget v2, p0, LZ/b;->b:I

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public g()Z
    .registers 3

    .prologue
    .line 149
    const/4 v0, 0x2

    iget v1, p0, LZ/b;->b:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, LZ/b;->f()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 178
    invoke-virtual {p0}, LZ/b;->g()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 187
    const/4 v0, 0x7

    iget v1, p0, LZ/b;->b:I

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public k()I
    .registers 2

    .prologue
    .line 194
    iget v0, p0, LZ/b;->c:I

    return v0
.end method

.method public l()I
    .registers 2

    .prologue
    .line 201
    iget v0, p0, LZ/b;->d:I

    return v0
.end method

.method public m()Landroid/graphics/Point;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, LZ/b;->f:Landroid/graphics/Point;

    return-object v0
.end method

.method public n()J
    .registers 3

    .prologue
    .line 217
    iget-wide v0, p0, LZ/b;->e:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 264
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
