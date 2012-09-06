.class public LT/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/d;


# static fields
.field private static final g:Landroid/graphics/Paint;


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, LT/c;->g:Landroid/graphics/Paint;

    .line 44
    sget-object v0, LT/c;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(IZZIZZ)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, LT/c;->f:I

    .line 49
    iput p1, p0, LT/c;->a:I

    .line 50
    iput-boolean p2, p0, LT/c;->b:Z

    .line 51
    iput-boolean p3, p0, LT/c;->c:Z

    .line 52
    iput-boolean p5, p0, LT/c;->d:Z

    .line 53
    iput p4, p0, LT/c;->f:I

    .line 54
    iput-boolean p6, p0, LT/c;->e:Z

    .line 55
    return-void
.end method

.method private static a(LS/e;)Landroid/graphics/Canvas;
    .registers 2
    .parameter

    .prologue
    .line 200
    check-cast p0, LT/e;

    invoke-virtual {p0}, LT/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/graphics/Paint;
    .registers 4

    .prologue
    .line 58
    iget-boolean v0, p0, LT/c;->d:Z

    if-eqz v0, :cond_f

    .line 59
    iget-boolean v0, p0, LT/c;->e:Z

    if-eqz v0, :cond_2a

    .line 60
    sget-object v0, LT/c;->g:Landroid/graphics/Paint;

    iget v1, p0, LT/c;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    :cond_f
    :goto_f
    sget-object v0, LT/c;->g:Landroid/graphics/Paint;

    iget-boolean v1, p0, LT/c;->b:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 69
    sget-object v0, LT/c;->g:Landroid/graphics/Paint;

    iget-boolean v1, p0, LT/c;->c:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 70
    sget-object v0, LT/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, LT/c;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 72
    sget-object v0, LT/c;->g:Landroid/graphics/Paint;

    return-object v0

    .line 64
    :cond_2a
    sget-object v0, LT/c;->g:Landroid/graphics/Paint;

    iget v1, p0, LT/c;->f:I

    const/high16 v2, -0x100

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f
.end method


# virtual methods
.method public a()I
    .registers 3

    .prologue
    .line 134
    invoke-direct {p0}, LT/c;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 135
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(C)I
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-array v0, v4, [F

    .line 84
    invoke-direct {p0}, LT/c;->e()Landroid/graphics/Paint;

    move-result-object v1

    new-array v2, v4, [C

    aput-char p1, v2, v3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    .line 85
    aget v0, v0, v3

    float-to-int v0, v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 4
    .parameter

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LT/c;->a(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)I
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-direct {p0}, LT/c;->e()Landroid/graphics/Paint;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(LS/e;Ljava/lang/String;II)V
    .registers 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-static {p1}, LT/c;->a(LS/e;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p3

    invoke-direct {p0}, LT/c;->e()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v2, p4, v2

    int-to-float v2, v2

    invoke-direct {p0}, LT/c;->e()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, LT/c;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    .prologue
    .line 225
    invoke-direct {p0}, LT/c;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    return v0
.end method

.method public d()I
    .registers 3

    .prologue
    .line 230
    iget v0, p0, LT/c;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    .line 231
    invoke-static {}, Lcom/google/googlenav/common/Config;->a()Lcom/google/googlenav/common/Config;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/googlenav/common/Config;->c(I)I

    move-result v0

    return v0
.end method
