.class public Lcom/google/googlenav/ui/android/d;
.super Lcom/google/googlenav/ui/ae;
.source "SourceFile"


# static fields
.field private static final d:Landroid/graphics/PathEffect;

.field private static final e:Landroid/graphics/Paint;


# instance fields
.field private final f:Lcom/google/googlenav/ui/android/e;

.field private final g:Lat/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Lcom/google/googlenav/ui/android/d;->d:Landroid/graphics/PathEffect;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/d;->e:Landroid/graphics/Paint;

    return-void

    .line 32
    :array_16
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/googlenav/ui/ae;-><init>()V

    .line 36
    new-instance v0, Lcom/google/googlenav/ui/android/e;

    invoke-direct {v0}, Lcom/google/googlenav/ui/android/e;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/d;->f:Lcom/google/googlenav/ui/android/e;

    .line 37
    new-instance v0, Lat/a;

    invoke-direct {v0}, Lat/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/d;->g:Lat/a;

    .line 110
    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;LT/f;)Landroid/graphics/Canvas;
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-static {p0, p1}, Lcom/google/googlenav/ui/android/d;->b(Landroid/graphics/Bitmap;LT/f;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/graphics/Bitmap;LT/f;)Landroid/graphics/Canvas;
    .registers 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 106
    invoke-virtual {p1}, LT/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/android/d;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 107
    return-object v0
.end method

.method static synthetic g()Landroid/graphics/PathEffect;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/googlenav/ui/android/d;->d:Landroid/graphics/PathEffect;

    return-object v0
.end method


# virtual methods
.method protected a(Lat/I;Lat/X;)LS/f;
    .registers 13
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 51
    invoke-virtual {p1}, Lat/I;->n()LS/f;

    move-result-object v8

    .line 53
    :try_start_5
    move-object v0, v8

    check-cast v0, LT/f;

    move-object v1, v0

    .line 64
    if-eqz p2, :cond_74

    invoke-virtual {p2}, Lat/X;->f()Z

    move-result v2

    if-nez v2, :cond_74

    .line 68
    invoke-virtual {v1}, LT/f;->a()I

    move-result v2

    invoke-virtual {v1}, LT/f;->b()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 70
    invoke-static {v3, v1}, Lcom/google/googlenav/ui/android/d;->b(Landroid/graphics/Bitmap;LT/f;)Landroid/graphics/Canvas;

    move-result-object v2

    .line 71
    iget-object v4, p0, Lcom/google/googlenav/ui/android/d;->g:Lat/a;

    invoke-virtual {v4, v2}, Lat/a;->a(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v4, p0, Lcom/google/googlenav/ui/android/d;->c:Lat/R;

    iget-object v5, p0, Lcom/google/googlenav/ui/android/d;->g:Lat/a;

    invoke-virtual {v4, p2, v5}, Lat/R;->a(Lat/X;Lat/T;)V

    .line 78
    :goto_2f
    iget-object v4, p0, Lcom/google/googlenav/ui/android/d;->f:Lcom/google/googlenav/ui/android/e;

    invoke-virtual {v4, v2, v3, v1}, Lcom/google/googlenav/ui/android/e;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;LT/f;)V

    .line 80
    iget-object v1, p0, Lcom/google/googlenav/ui/android/d;->b:Lcom/google/googlenav/ui/aR;

    if-eqz v1, :cond_53

    .line 81
    invoke-virtual {p1}, Lat/I;->c()Lat/P;

    move-result-object v7

    .line 82
    iget-object v1, p0, Lcom/google/googlenav/ui/android/d;->b:Lcom/google/googlenav/ui/aR;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/d;->f:Lcom/google/googlenav/ui/android/e;

    invoke-virtual {v7}, Lat/P;->f()I

    move-result v3

    invoke-virtual {v7}, Lat/P;->g()I

    move-result v4

    const/16 v5, 0x100

    const/16 v6, 0x100

    invoke-virtual {v7}, Lat/P;->e()Lat/Y;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/google/googlenav/ui/aR;->a(Lcom/google/googlenav/ui/aS;IIIILat/Y;)V

    .line 87
    :cond_53
    iget-object v1, p0, Lcom/google/googlenav/ui/android/d;->f:Lcom/google/googlenav/ui/android/e;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/e;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 88
    new-instance v1, LT/f;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/d;->f:Lcom/google/googlenav/ui/android/e;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/e;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, LT/f;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_6f

    .line 94
    invoke-interface {v8}, LS/f;->f()V

    :goto_69
    return-object v1

    :cond_6a
    invoke-interface {v8}, LS/f;->f()V

    move-object v1, v9

    goto :goto_69

    :catchall_6f
    move-exception v1

    invoke-interface {v8}, LS/f;->f()V

    throw v1

    :cond_74
    move-object v2, v9

    move-object v3, v9

    goto :goto_2f
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
