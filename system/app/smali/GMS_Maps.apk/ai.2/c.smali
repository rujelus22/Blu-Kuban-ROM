.class public Lai/c;
.super Ljava/lang/Object;

# interfaces
.implements Lah/d;


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

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lai/c;->g:Landroid/graphics/Paint;

    sget-object v0, Lai/c;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public constructor <init>(IZZIZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lai/c;->f:I

    iput p1, p0, Lai/c;->a:I

    iput-boolean p2, p0, Lai/c;->b:Z

    iput-boolean p3, p0, Lai/c;->c:Z

    iput-boolean p5, p0, Lai/c;->d:Z

    iput p4, p0, Lai/c;->f:I

    iput-boolean p6, p0, Lai/c;->e:Z

    return-void
.end method

.method private static a(Lah/e;)Landroid/graphics/Canvas;
    .registers 2

    check-cast p0, Lai/e;

    invoke-virtual {p0}, Lai/e;->f()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/graphics/Paint;
    .registers 4

    iget-boolean v0, p0, Lai/c;->d:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lai/c;->e:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lai/c;->g:Landroid/graphics/Paint;

    iget v1, p0, Lai/c;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_f
    :goto_f
    sget-object v0, Lai/c;->g:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lai/c;->b:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v0, Lai/c;->g:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lai/c;->c:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget-object v0, Lai/c;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lai/c;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lai/c;->g:Landroid/graphics/Paint;

    return-object v0

    :cond_2a
    sget-object v0, Lai/c;->g:Landroid/graphics/Paint;

    iget v1, p0, Lai/c;->f:I

    const/high16 v2, -0x100

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_f
.end method


# virtual methods
.method public a()I
    .registers 3

    invoke-direct {p0}, Lai/c;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

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

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [F

    invoke-direct {p0}, Lai/c;->e()Landroid/graphics/Paint;

    move-result-object v1

    new-array v2, v4, [C

    aput-char p1, v2, v3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    aget v0, v0, v3

    float-to-int v0, v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lai/c;->a(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)I
    .registers 6

    invoke-direct {p0}, Lai/c;->e()Landroid/graphics/Paint;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(Lah/e;Ljava/lang/String;II)V
    .registers 9

    invoke-static {p1}, Lai/c;->a(Lah/e;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p3

    invoke-direct {p0}, Lai/c;->e()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v2, p4, v2

    int-to-float v2, v2

    invoke-direct {p0}, Lai/c;->e()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lai/c;->f:I

    return v0
.end method

.method public c()I
    .registers 2

    invoke-direct {p0}, Lai/c;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    return v0
.end method

.method public d()I
    .registers 3

    iget v0, p0, Lai/c;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Laf/b;->c(I)I

    move-result v0

    return v0
.end method
