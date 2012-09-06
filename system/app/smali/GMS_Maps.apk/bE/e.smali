.class public Lbe/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/f;


# instance fields
.field private a:I

.field private b:[F

.field private c:[F

.field private d:[F

.field private e:I

.field private f:[F

.field private g:J

.field private h:F

.field private i:Lbe/g;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x32

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v2, p0, Lbe/e;->a:I

    .line 19
    new-array v0, v1, [F

    iput-object v0, p0, Lbe/e;->b:[F

    .line 20
    new-array v0, v1, [F

    iput-object v0, p0, Lbe/e;->c:[F

    .line 21
    new-array v0, v1, [F

    iput-object v0, p0, Lbe/e;->d:[F

    .line 22
    iput v2, p0, Lbe/e;->e:I

    .line 23
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lbe/e;->f:[F

    .line 24
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lbe/e;->g:J

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lbe/e;->h:F

    return-void
.end method


# virtual methods
.method public a(JFFF)V
    .registers 15
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x4080

    const/16 v7, 0x32

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 40
    aput p3, v0, v4

    .line 41
    aput p4, v0, v5

    .line 42
    aput p5, v0, v6

    .line 45
    iget v1, p0, Lbe/e;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbe/e;->a:I

    .line 46
    iget-object v1, p0, Lbe/e;->b:[F

    iget v2, p0, Lbe/e;->a:I

    rem-int/lit8 v2, v2, 0x32

    aget v3, v0, v4

    aput v3, v1, v2

    .line 47
    iget-object v1, p0, Lbe/e;->c:[F

    iget v2, p0, Lbe/e;->a:I

    rem-int/lit8 v2, v2, 0x32

    aget v3, v0, v5

    aput v3, v1, v2

    .line 48
    iget-object v1, p0, Lbe/e;->d:[F

    iget v2, p0, Lbe/e;->a:I

    rem-int/lit8 v2, v2, 0x32

    aget v3, v0, v6

    aput v3, v1, v2

    .line 50
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 51
    iget-object v2, p0, Lbe/e;->b:[F

    invoke-static {v2}, Lbe/d;->a([F)F

    move-result v2

    iget v3, p0, Lbe/e;->a:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v4

    .line 52
    iget-object v2, p0, Lbe/e;->c:[F

    invoke-static {v2}, Lbe/d;->a([F)F

    move-result v2

    iget v3, p0, Lbe/e;->a:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v5

    .line 53
    iget-object v2, p0, Lbe/e;->d:[F

    invoke-static {v2}, Lbe/d;->a([F)F

    move-result v2

    iget v3, p0, Lbe/e;->a:I

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v6

    .line 55
    invoke-static {v1}, Lbe/d;->b([F)F

    move-result v2

    .line 57
    aget v3, v1, v4

    div-float/2addr v3, v2

    aput v3, v1, v4

    .line 58
    aget v3, v1, v5

    div-float/2addr v3, v2

    aput v3, v1, v5

    .line 59
    aget v3, v1, v6

    div-float/2addr v3, v2

    aput v3, v1, v6

    .line 63
    invoke-static {v1, v0}, Lbe/d;->a([F[F)F

    move-result v0

    sub-float/2addr v0, v2

    .line 64
    iget v1, p0, Lbe/e;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbe/e;->e:I

    .line 65
    iget-object v1, p0, Lbe/e;->f:[F

    iget v2, p0, Lbe/e;->e:I

    rem-int/lit8 v2, v2, 0xa

    aput v0, v1, v2

    .line 67
    iget-object v0, p0, Lbe/e;->f:[F

    invoke-static {v0}, Lbe/d;->a([F)F

    move-result v0

    .line 69
    cmpl-float v1, v0, v8

    if-lez v1, :cond_af

    iget v1, p0, Lbe/e;->h:F

    cmpg-float v1, v1, v8

    if-gtz v1, :cond_af

    iget-wide v1, p0, Lbe/e;->g:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0xee6b280

    cmp-long v1, v1, v3

    if-lez v1, :cond_af

    .line 71
    iget-object v1, p0, Lbe/e;->i:Lbe/g;

    invoke-interface {v1, p1, p2}, Lbe/g;->a(J)V

    .line 72
    iput-wide p1, p0, Lbe/e;->g:J

    .line 74
    :cond_af
    iput v0, p0, Lbe/e;->h:F

    .line 75
    return-void
.end method

.method public a(Lbe/g;)V
    .registers 2
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lbe/e;->i:Lbe/g;

    .line 32
    return-void
.end method
