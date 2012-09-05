.class public Lcom/google/googlenav/ui/android/e;
.super Lcom/google/googlenav/ui/ah;


# static fields
.field private static final d:Landroid/graphics/PathEffect;

.field private static final e:Landroid/graphics/Paint;


# instance fields
.field private final f:Lcom/google/googlenav/ui/android/f;

.field private final g:LaJ/a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/DashPathEffect;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_16

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    sput-object v0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    return-void

    :array_16
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/googlenav/ui/ah;-><init>()V

    new-instance v0, Lcom/google/googlenav/ui/android/f;

    invoke-direct {v0, p0}, Lcom/google/googlenav/ui/android/f;-><init>(Lcom/google/googlenav/ui/android/e;)V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->f:Lcom/google/googlenav/ui/android/f;

    new-instance v0, LaJ/a;

    invoke-direct {v0}, LaJ/a;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/ui/android/e;->g:LaJ/a;

    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;Lai/f;)Landroid/graphics/Canvas;
    .registers 3

    invoke-static {p0, p1}, Lcom/google/googlenav/ui/android/e;->b(Landroid/graphics/Bitmap;Lai/f;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/graphics/Bitmap;Lai/f;)Landroid/graphics/Canvas;
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lai/f;->h()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Lcom/google/googlenav/ui/android/e;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method static synthetic g()Landroid/graphics/PathEffect;
    .registers 1

    sget-object v0, Lcom/google/googlenav/ui/android/e;->d:Landroid/graphics/PathEffect;

    return-object v0
.end method


# virtual methods
.method protected a(LaJ/I;LaJ/X;)Lah/f;
    .registers 13

    const/4 v9, 0x0

    invoke-virtual {p1}, LaJ/I;->n()Lah/f;

    move-result-object v8

    :try_start_5
    move-object v0, v8

    check-cast v0, Lai/f;

    move-object v1, v0

    if-eqz p2, :cond_74

    invoke-virtual {p2}, LaJ/X;->f()Z

    move-result v2

    if-nez v2, :cond_74

    invoke-virtual {v1}, Lai/f;->a()I

    move-result v2

    invoke-virtual {v1}, Lai/f;->b()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/googlenav/ui/android/e;->b(Landroid/graphics/Bitmap;Lai/f;)Landroid/graphics/Canvas;

    move-result-object v2

    iget-object v4, p0, Lcom/google/googlenav/ui/android/e;->g:LaJ/a;

    invoke-virtual {v4, v2}, LaJ/a;->a(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/google/googlenav/ui/android/e;->c:LaJ/R;

    iget-object v5, p0, Lcom/google/googlenav/ui/android/e;->g:LaJ/a;

    invoke-virtual {v4, p2, v5}, LaJ/R;->a(LaJ/X;LaJ/T;)V

    :goto_2f
    iget-object v4, p0, Lcom/google/googlenav/ui/android/e;->f:Lcom/google/googlenav/ui/android/f;

    invoke-virtual {v4, v2, v3, v1}, Lcom/google/googlenav/ui/android/f;->a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Lai/f;)V

    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->b:Lcom/google/googlenav/ui/bc;

    if-eqz v1, :cond_53

    invoke-virtual {p1}, LaJ/I;->c()LaJ/P;

    move-result-object v7

    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->b:Lcom/google/googlenav/ui/bc;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/e;->f:Lcom/google/googlenav/ui/android/f;

    invoke-virtual {v7}, LaJ/P;->f()I

    move-result v3

    invoke-virtual {v7}, LaJ/P;->g()I

    move-result v4

    const/16 v5, 0x100

    const/16 v6, 0x100

    invoke-virtual {v7}, LaJ/P;->e()LaJ/Y;

    move-result-object v7

    invoke-virtual/range {v1 .. v7}, Lcom/google/googlenav/ui/bc;->a(Lcom/google/googlenav/ui/bd;IIIILaJ/Y;)V

    :cond_53
    iget-object v1, p0, Lcom/google/googlenav/ui/android/e;->f:Lcom/google/googlenav/ui/android/f;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/android/f;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6a

    new-instance v1, Lai/f;

    iget-object v2, p0, Lcom/google/googlenav/ui/android/e;->f:Lcom/google/googlenav/ui/android/f;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/android/f;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lai/f;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_66
    .catchall {:try_start_5 .. :try_end_66} :catchall_6f

    invoke-interface {v8}, Lah/f;->f()V

    :goto_69
    return-object v1

    :cond_6a
    invoke-interface {v8}, Lah/f;->f()V

    move-object v1, v9

    goto :goto_69

    :catchall_6f
    move-exception v1

    invoke-interface {v8}, Lah/f;->f()V

    throw v1

    :cond_74
    move-object v2, v9

    move-object v3, v9

    goto :goto_2f
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
