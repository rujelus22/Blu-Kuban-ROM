.class public Lat/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/T;


# static fields
.field private static final a:[F

.field private static final b:[F


# instance fields
.field private final c:Landroid/graphics/PathEffect;

.field private final d:Landroid/graphics/PathEffect;

.field private final e:Landroid/graphics/AvoidXfermode;

.field private f:Landroid/graphics/Canvas;

.field private final g:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 25
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    sput-object v0, Lat/a;->a:[F

    .line 26
    new-array v0, v1, [F

    fill-array-data v0, :array_18

    sput-object v0, Lat/a;->b:[F

    return-void

    .line 25
    :array_10
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0xc0t 0x40t
    .end array-data

    .line 26
    :array_18
    .array-data 0x4
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Lat/a;->a:[F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lat/a;->c:Landroid/graphics/PathEffect;

    .line 29
    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Lat/a;->b:[F

    const/high16 v2, 0x40c0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lat/a;->d:Landroid/graphics/PathEffect;

    .line 31
    new-instance v0, Landroid/graphics/AvoidXfermode;

    const v1, -0xbfbfc0

    const/16 v2, 0xfd

    sget-object v3, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    iput-object v0, p0, Lat/a;->e:Landroid/graphics/AvoidXfermode;

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lat/a;->f:Landroid/graphics/Canvas;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    .line 84
    return-void
.end method


# virtual methods
.method public a()Lat/S;
    .registers 3

    .prologue
    .line 81
    new-instance v0, Lat/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lat/c;-><init>(Lat/b;)V

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lat/a;->f:Landroid/graphics/Canvas;

    .line 40
    iget-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 41
    iget-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 42
    iget-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 43
    iget-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    return-void
.end method

.method public a(Lat/S;II)V
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 48
    shr-int/lit8 v0, p3, 0x8

    .line 50
    const v1, -0x2f000001

    if-ne p2, v1, :cond_5a

    .line 52
    const/4 p2, -0x1

    .line 53
    add-int/lit8 v0, v0, 0x2

    move v1, v0

    .line 55
    :goto_c
    const/high16 v0, -0x64

    if-ne p2, v0, :cond_56

    const/4 v0, 0x1

    .line 57
    :goto_11
    iget-object v3, p0, Lat/a;->g:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v1, p0, Lat/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    iget-object v3, p0, Lat/a;->g:Landroid/graphics/Paint;

    if-eqz v0, :cond_58

    iget-object v1, p0, Lat/a;->c:Landroid/graphics/PathEffect;

    :goto_22
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 60
    iget-object v1, p0, Lat/a;->g:Landroid/graphics/Paint;

    iget-object v3, p0, Lat/a;->e:Landroid/graphics/AvoidXfermode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 62
    check-cast p1, Lat/c;

    invoke-virtual {p1}, Lat/c;->a()Landroid/graphics/Path;

    move-result-object v1

    .line 63
    iget-object v3, p0, Lat/a;->f:Landroid/graphics/Canvas;

    iget-object v4, p0, Lat/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 65
    if-eqz v0, :cond_55

    .line 72
    iget-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    iget-object v3, p0, Lat/a;->d:Landroid/graphics/PathEffect;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 73
    iget-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    const/high16 v3, -0x100

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lat/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 75
    iget-object v0, p0, Lat/a;->f:Landroid/graphics/Canvas;

    iget-object v2, p0, Lat/a;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77
    :cond_55
    return-void

    .line 55
    :cond_56
    const/4 v0, 0x0

    goto :goto_11

    :cond_58
    move-object v1, v2

    .line 59
    goto :goto_22

    :cond_5a
    move v1, v0

    goto :goto_c
.end method
