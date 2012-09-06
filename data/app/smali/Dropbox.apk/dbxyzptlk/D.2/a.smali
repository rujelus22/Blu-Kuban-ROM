.class public final Ldbxyzptlk/D/a;
.super Ljava/lang/Object;
.source "panda.py"


# static fields
.field private static A:Ljava/lang/reflect/Method;

.field private static B:Ljava/lang/reflect/Method;

.field private static C:Ljava/lang/reflect/Method;

.field private static D:Ljava/lang/reflect/Method;

.field private static E:Ljava/lang/reflect/Method;

.field private static F:Ljava/lang/reflect/Method;

.field private static G:I

.field private static H:I

.field private static final I:[F

.field private static final J:[F

.field private static final K:[F

.field private static final L:[I

.field public static final b:Z

.field private static y:Ljava/lang/reflect/Method;

.field private static z:Ljava/lang/reflect/Method;


# instance fields
.field a:Ldbxyzptlk/D/b;

.field private c:Ldbxyzptlk/D/c;

.field private d:Ldbxyzptlk/D/c;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:Z

.field private l:Ljava/lang/Object;

.field private m:Ldbxyzptlk/D/d;

.field private n:J

.field private o:J

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/16 v7, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    const/4 v2, 0x6

    sput v2, Ldbxyzptlk/D/a;->G:I

    .line 216
    const/16 v2, 0x8

    sput v2, Ldbxyzptlk/D/a;->H:I

    .line 222
    :try_start_b
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->y:Ljava/lang/reflect/Method;

    .line 223
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "findPointerIndex"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->z:Ljava/lang/reflect/Method;

    .line 224
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getPressure"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->A:Ljava/lang/reflect/Method;

    .line 225
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalX"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->B:Ljava/lang/reflect/Method;

    .line 226
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalY"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->C:Ljava/lang/reflect/Method;

    .line 227
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getHistoricalPressure"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->D:Ljava/lang/reflect/Method;

    .line 228
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getX"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->E:Ljava/lang/reflect/Method;

    .line 229
    const-class v2, Landroid/view/MotionEvent;

    const-string v3, "getY"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Ldbxyzptlk/D/a;->F:Ljava/lang/reflect/Method;
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_a5} :catch_da

    .line 234
    :goto_a5
    sput-boolean v0, Ldbxyzptlk/D/a;->b:Z

    .line 235
    sget-boolean v0, Ldbxyzptlk/D/a;->b:Z

    if-eqz v0, :cond_c9

    .line 239
    :try_start_ab
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_UP"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Ldbxyzptlk/D/a;->G:I

    .line 240
    const-class v0, Landroid/view/MotionEvent;

    const-string v1, "ACTION_POINTER_INDEX_SHIFT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Ldbxyzptlk/D/a;->H:I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_c9} :catch_e4

    .line 248
    :cond_c9
    :goto_c9
    new-array v0, v7, [F

    sput-object v0, Ldbxyzptlk/D/a;->I:[F

    .line 249
    new-array v0, v7, [F

    sput-object v0, Ldbxyzptlk/D/a;->J:[F

    .line 250
    new-array v0, v7, [F

    sput-object v0, Ldbxyzptlk/D/a;->K:[F

    .line 251
    new-array v0, v7, [I

    sput-object v0, Ldbxyzptlk/D/a;->L:[I

    return-void

    .line 231
    :catch_da
    move-exception v0

    .line 232
    const-string v2, "MultiTouchController"

    const-string v3, "static initializer failed"

    invoke-static {v2, v3, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    goto :goto_a5

    .line 241
    :catch_e4
    move-exception v0

    goto :goto_c9
.end method

.method public constructor <init>(Ldbxyzptlk/D/b;)V
    .registers 3
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ldbxyzptlk/D/a;-><init>(Ldbxyzptlk/D/b;Z)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ldbxyzptlk/D/b;Z)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    .line 134
    new-instance v0, Ldbxyzptlk/D/d;

    invoke-direct {v0}, Ldbxyzptlk/D/d;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    .line 149
    const/high16 v0, 0x4000

    iput v0, p0, Ldbxyzptlk/D/a;->v:F

    .line 152
    const/high16 v0, 0x3f00

    iput v0, p0, Ldbxyzptlk/D/a;->w:F

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Ldbxyzptlk/D/a;->x:I

    .line 177
    new-instance v0, Ldbxyzptlk/D/c;

    invoke-direct {v0}, Ldbxyzptlk/D/c;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    .line 178
    new-instance v0, Ldbxyzptlk/D/c;

    invoke-direct {v0}, Ldbxyzptlk/D/c;-><init>()V

    iput-object v0, p0, Ldbxyzptlk/D/a;->d:Ldbxyzptlk/D/c;

    .line 179
    iput-boolean p2, p0, Ldbxyzptlk/D/a;->k:Z

    .line 180
    iput-object p1, p0, Ldbxyzptlk/D/a;->a:Ldbxyzptlk/D/b;

    .line 181
    return-void
.end method

.method private a()V
    .registers 5

    .prologue
    const/high16 v3, 0x41f0

    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->g()F

    move-result v0

    iput v0, p0, Ldbxyzptlk/D/a;->e:F

    .line 118
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->h()F

    move-result v0

    iput v0, p0, Ldbxyzptlk/D/a;->f:F

    .line 119
    const v2, 0x41aa6666

    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->a(Ldbxyzptlk/D/d;)Z

    move-result v0

    if-nez v0, :cond_4e

    move v0, v1

    :goto_1f
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ldbxyzptlk/D/a;->g:F

    .line 120
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->b(Ldbxyzptlk/D/d;)Z

    move-result v0

    if-nez v0, :cond_55

    move v0, v1

    :goto_2e
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ldbxyzptlk/D/a;->h:F

    .line 121
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->b(Ldbxyzptlk/D/d;)Z

    move-result v0

    if-nez v0, :cond_5c

    move v0, v1

    :goto_3d
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Ldbxyzptlk/D/a;->i:F

    .line 122
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->c(Ldbxyzptlk/D/d;)Z

    move-result v0

    if-nez v0, :cond_63

    :goto_4b
    iput v1, p0, Ldbxyzptlk/D/a;->j:F

    .line 123
    return-void

    .line 119
    :cond_4e
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->e()F

    move-result v0

    goto :goto_1f

    .line 120
    :cond_55
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->b()F

    move-result v0

    goto :goto_2e

    .line 121
    :cond_5c
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->c()F

    move-result v0

    goto :goto_3d

    .line 122
    :cond_63
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->f()F

    move-result v1

    goto :goto_4b
.end method

.method private a(I[F[F[F[IIZJ)V
    .registers 20
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Ldbxyzptlk/D/a;->d:Ldbxyzptlk/D/c;

    .line 321
    iget-object v1, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    iput-object v1, p0, Ldbxyzptlk/D/a;->d:Ldbxyzptlk/D/c;

    .line 322
    iput-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    .line 324
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v9}, Ldbxyzptlk/D/c;->a(Ldbxyzptlk/D/c;I[F[F[F[IIZJ)V

    .line 325
    invoke-direct {p0}, Ldbxyzptlk/D/a;->d()V

    .line 326
    return-void
.end method

.method private b()V
    .registers 5

    .prologue
    const/high16 v1, 0x3f80

    .line 332
    iget-object v0, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    if-nez v0, :cond_7

    .line 351
    :goto_6
    return-void

    .line 336
    :cond_7
    iget-object v0, p0, Ldbxyzptlk/D/a;->a:Ldbxyzptlk/D/b;

    iget-object v2, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    iget-object v3, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-interface {v0, v2, v3}, Ldbxyzptlk/D/b;->a(Ljava/lang/Object;Ldbxyzptlk/D/d;)V

    .line 343
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->a(Ldbxyzptlk/D/d;)Z

    move-result v0

    if-nez v0, :cond_63

    move v0, v1

    :goto_19
    div-float v0, v1, v0

    .line 344
    invoke-direct {p0}, Ldbxyzptlk/D/a;->a()V

    .line 345
    iget v1, p0, Ldbxyzptlk/D/a;->e:F

    iget-object v2, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v2}, Ldbxyzptlk/D/d;->e(Ldbxyzptlk/D/d;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iput v1, p0, Ldbxyzptlk/D/a;->p:F

    .line 346
    iget v1, p0, Ldbxyzptlk/D/a;->f:F

    iget-object v2, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v2}, Ldbxyzptlk/D/d;->f(Ldbxyzptlk/D/d;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iput v0, p0, Ldbxyzptlk/D/a;->q:F

    .line 347
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->d(Ldbxyzptlk/D/d;)F

    move-result v0

    iget v1, p0, Ldbxyzptlk/D/a;->g:F

    div-float/2addr v0, v1

    iput v0, p0, Ldbxyzptlk/D/a;->r:F

    .line 348
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->g(Ldbxyzptlk/D/d;)F

    move-result v0

    iget v1, p0, Ldbxyzptlk/D/a;->h:F

    div-float/2addr v0, v1

    iput v0, p0, Ldbxyzptlk/D/a;->t:F

    .line 349
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->h(Ldbxyzptlk/D/d;)F

    move-result v0

    iget v1, p0, Ldbxyzptlk/D/a;->i:F

    div-float/2addr v0, v1

    iput v0, p0, Ldbxyzptlk/D/a;->u:F

    .line 350
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->i(Ldbxyzptlk/D/d;)F

    move-result v0

    iget v1, p0, Ldbxyzptlk/D/a;->j:F

    sub-float/2addr v0, v1

    iput v0, p0, Ldbxyzptlk/D/a;->s:F

    goto :goto_6

    .line 343
    :cond_63
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->d(Ldbxyzptlk/D/d;)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_70

    move v0, v1

    goto :goto_19

    :cond_70
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->d(Ldbxyzptlk/D/d;)F

    move-result v0

    goto :goto_19
.end method

.method private c()V
    .registers 8

    .prologue
    const/high16 v0, 0x3f80

    .line 356
    iget-object v1, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    if-nez v1, :cond_7

    .line 380
    :cond_6
    :goto_6
    return-void

    .line 360
    :cond_7
    iget-object v1, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v1}, Ldbxyzptlk/D/d;->a(Ldbxyzptlk/D/d;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 361
    :cond_f
    :goto_f
    invoke-direct {p0}, Ldbxyzptlk/D/a;->a()V

    .line 363
    iget v1, p0, Ldbxyzptlk/D/a;->e:F

    iget v2, p0, Ldbxyzptlk/D/a;->p:F

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    .line 364
    iget v2, p0, Ldbxyzptlk/D/a;->f:F

    iget v3, p0, Ldbxyzptlk/D/a;->q:F

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    .line 365
    iget v0, p0, Ldbxyzptlk/D/a;->r:F

    iget v3, p0, Ldbxyzptlk/D/a;->g:F

    mul-float/2addr v0, v3

    .line 368
    iget v3, p0, Ldbxyzptlk/D/a;->v:F

    iget v4, p0, Ldbxyzptlk/D/a;->w:F

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 370
    iget v0, p0, Ldbxyzptlk/D/a;->t:F

    iget v4, p0, Ldbxyzptlk/D/a;->h:F

    mul-float/2addr v4, v0

    .line 371
    iget v0, p0, Ldbxyzptlk/D/a;->u:F

    iget v5, p0, Ldbxyzptlk/D/a;->i:F

    mul-float/2addr v5, v0

    .line 372
    iget v0, p0, Ldbxyzptlk/D/a;->s:F

    iget v6, p0, Ldbxyzptlk/D/a;->j:F

    add-float/2addr v6, v0

    .line 375
    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-virtual/range {v0 .. v6}, Ldbxyzptlk/D/d;->a(FFFFFF)V

    .line 377
    iget-object v0, p0, Ldbxyzptlk/D/a;->a:Ldbxyzptlk/D/b;

    iget-object v1, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    iget-object v2, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    iget-object v3, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-interface {v0, v1, v2, v3}, Ldbxyzptlk/D/b;->a(Ljava/lang/Object;Ldbxyzptlk/D/d;Ldbxyzptlk/D/c;)Z

    move-result v0

    .line 378
    if-nez v0, :cond_6

    goto :goto_6

    .line 360
    :cond_52
    iget-object v1, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v1}, Ldbxyzptlk/D/d;->d(Ldbxyzptlk/D/d;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_f

    iget-object v0, p0, Ldbxyzptlk/D/a;->m:Ldbxyzptlk/D/d;

    invoke-static {v0}, Ldbxyzptlk/D/d;->d(Ldbxyzptlk/D/d;)F

    move-result v0

    goto :goto_f
.end method

.method private d()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x4220

    const/high16 v5, 0x41f0

    const/high16 v4, 0x3f00

    const-wide/16 v2, 0x14

    .line 390
    iget v0, p0, Ldbxyzptlk/D/a;->x:I

    packed-switch v0, :pswitch_data_13e

    .line 479
    :cond_e
    :goto_e
    return-void

    .line 393
    :pswitch_f
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->i()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 395
    iget-object v0, p0, Ldbxyzptlk/D/a;->a:Ldbxyzptlk/D/b;

    iget-object v1, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-interface {v0, v1}, Ldbxyzptlk/D/b;->b(Ldbxyzptlk/D/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    .line 396
    iget-object v0, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    if-eqz v0, :cond_e

    .line 398
    const/4 v0, 0x1

    iput v0, p0, Ldbxyzptlk/D/a;->x:I

    .line 399
    iget-object v0, p0, Ldbxyzptlk/D/a;->a:Ldbxyzptlk/D/b;

    iget-object v1, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    iget-object v2, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-interface {v0, v1, v2}, Ldbxyzptlk/D/b;->a(Ljava/lang/Object;Ldbxyzptlk/D/c;)V

    .line 400
    invoke-direct {p0}, Ldbxyzptlk/D/a;->b()V

    .line 402
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/D/a;->o:J

    iput-wide v0, p0, Ldbxyzptlk/D/a;->n:J

    goto :goto_e

    .line 409
    :pswitch_3f
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->i()Z

    move-result v0

    if-nez v0, :cond_54

    .line 411
    iput v1, p0, Ldbxyzptlk/D/a;->x:I

    .line 412
    iget-object v0, p0, Ldbxyzptlk/D/a;->a:Ldbxyzptlk/D/b;

    const/4 v1, 0x0

    iput-object v1, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    iget-object v2, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-interface {v0, v1, v2}, Ldbxyzptlk/D/b;->a(Ljava/lang/Object;Ldbxyzptlk/D/c;)V

    goto :goto_e

    .line 414
    :cond_54
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->a()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 416
    const/4 v0, 0x2

    iput v0, p0, Ldbxyzptlk/D/a;->x:I

    .line 418
    invoke-direct {p0}, Ldbxyzptlk/D/a;->b()V

    .line 420
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/D/a;->n:J

    .line 421
    iget-wide v0, p0, Ldbxyzptlk/D/a;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldbxyzptlk/D/a;->o:J

    goto :goto_e

    .line 425
    :cond_70
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->j()J

    move-result-wide v0

    iget-wide v2, p0, Ldbxyzptlk/D/a;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_80

    .line 428
    invoke-direct {p0}, Ldbxyzptlk/D/a;->b()V

    goto :goto_e

    .line 431
    :cond_80
    invoke-direct {p0}, Ldbxyzptlk/D/a;->c()V

    goto :goto_e

    .line 438
    :pswitch_84
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->a()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->i()Z

    move-result v0

    if-nez v0, :cond_bf

    .line 441
    :cond_94
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->i()Z

    move-result v0

    if-nez v0, :cond_aa

    .line 443
    iput v1, p0, Ldbxyzptlk/D/a;->x:I

    .line 444
    iget-object v0, p0, Ldbxyzptlk/D/a;->a:Ldbxyzptlk/D/b;

    const/4 v1, 0x0

    iput-object v1, p0, Ldbxyzptlk/D/a;->l:Ljava/lang/Object;

    iget-object v2, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-interface {v0, v1, v2}, Ldbxyzptlk/D/b;->a(Ljava/lang/Object;Ldbxyzptlk/D/c;)V

    goto/16 :goto_e

    .line 448
    :cond_aa
    const/4 v0, 0x1

    iput v0, p0, Ldbxyzptlk/D/a;->x:I

    .line 450
    invoke-direct {p0}, Ldbxyzptlk/D/a;->b()V

    .line 452
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/D/a;->n:J

    .line 453
    iget-wide v0, p0, Ldbxyzptlk/D/a;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldbxyzptlk/D/a;->o:J

    goto/16 :goto_e

    .line 458
    :cond_bf
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->g()F

    move-result v0

    iget-object v1, p0, Ldbxyzptlk/D/a;->d:Ldbxyzptlk/D/c;

    invoke-virtual {v1}, Ldbxyzptlk/D/c;->g()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_115

    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->h()F

    move-result v0

    iget-object v1, p0, Ldbxyzptlk/D/a;->d:Ldbxyzptlk/D/c;

    invoke-virtual {v1}, Ldbxyzptlk/D/c;->h()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gtz v0, :cond_115

    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->b()F

    move-result v0

    iget-object v1, p0, Ldbxyzptlk/D/a;->d:Ldbxyzptlk/D/c;

    invoke-virtual {v1}, Ldbxyzptlk/D/c;->b()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-gtz v0, :cond_115

    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->c()F

    move-result v0

    iget-object v1, p0, Ldbxyzptlk/D/a;->d:Ldbxyzptlk/D/c;

    invoke-virtual {v1}, Ldbxyzptlk/D/c;->c()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v4

    cmpl-float v0, v0, v6

    if-lez v0, :cond_127

    .line 463
    :cond_115
    invoke-direct {p0}, Ldbxyzptlk/D/a;->b()V

    .line 464
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-virtual {v0}, Ldbxyzptlk/D/c;->j()J

    move-result-wide v0

    iput-wide v0, p0, Ldbxyzptlk/D/a;->n:J

    .line 465
    iget-wide v0, p0, Ldbxyzptlk/D/a;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ldbxyzptlk/D/a;->o:J

    goto/16 :goto_e

    .line 467
    :cond_127
    iget-object v0, p0, Ldbxyzptlk/D/a;->c:Ldbxyzptlk/D/c;

    invoke-static {v0}, Ldbxyzptlk/D/c;->b(Ldbxyzptlk/D/c;)J

    move-result-wide v0

    iget-wide v2, p0, Ldbxyzptlk/D/a;->o:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_138

    .line 469
    invoke-direct {p0}, Ldbxyzptlk/D/a;->b()V

    goto/16 :goto_e

    .line 472
    :cond_138
    invoke-direct {p0}, Ldbxyzptlk/D/a;->c()V

    goto/16 :goto_e

    .line 390
    nop

    :pswitch_data_13e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_3f
        :pswitch_84
    .end packed-switch
.end method


# virtual methods
.method public final a(FF)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 184
    iput p1, p0, Ldbxyzptlk/D/a;->w:F

    .line 185
    iput p2, p0, Ldbxyzptlk/D/a;->v:F

    .line 186
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter

    .prologue
    .line 256
    :try_start_0
    sget-boolean v0, Ldbxyzptlk/D/a;->b:Z

    if-eqz v0, :cond_20

    sget-object v0, Ldbxyzptlk/D/a;->y:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 259
    :goto_13
    iget v0, p0, Ldbxyzptlk/D/a;->x:I

    if-nez v0, :cond_22

    iget-boolean v0, p0, Ldbxyzptlk/D/a;->k:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    if-ne v1, v0, :cond_22

    .line 261
    const/4 v0, 0x0

    .line 310
    :goto_1f
    return v0

    .line 256
    :cond_20
    const/4 v1, 0x1

    goto :goto_13

    .line 266
    :cond_22
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    div-int v12, v0, v1

    .line 268
    const/4 v0, 0x0

    move v11, v0

    :goto_2e
    if-gt v11, v12, :cond_16f

    .line 270
    if-ge v11, v12, :cond_78

    const/4 v0, 0x1

    move v8, v0

    .line 271
    :goto_34
    sget-boolean v0, Ldbxyzptlk/D/a;->b:Z

    if-eqz v0, :cond_3b

    const/4 v0, 0x1

    if-ne v1, v0, :cond_8a

    .line 277
    :cond_3b
    sget-object v2, Ldbxyzptlk/D/a;->I:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_7b

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v0

    :goto_44
    aput v0, v2, v3

    .line 278
    sget-object v2, Ldbxyzptlk/D/a;->J:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_80

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    :goto_4f
    aput v0, v2, v3

    .line 279
    sget-object v2, Ldbxyzptlk/D/a;->K:[F

    const/4 v3, 0x0

    if-eqz v8, :cond_85

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalPressure(I)F

    move-result v0

    :goto_5a
    aput v0, v2, v3

    .line 298
    :cond_5c
    sget-object v2, Ldbxyzptlk/D/a;->I:[F

    sget-object v3, Ldbxyzptlk/D/a;->J:[F

    sget-object v4, Ldbxyzptlk/D/a;->K:[F

    sget-object v5, Ldbxyzptlk/D/a;->L:[I

    if-eqz v8, :cond_14f

    const/4 v6, 0x2

    :goto_67
    if-eqz v8, :cond_152

    const/4 v7, 0x1

    :goto_6a
    if-eqz v8, :cond_169

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v8

    :goto_70
    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Ldbxyzptlk/D/a;->a(I[F[F[F[IIZJ)V

    .line 268
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2e

    .line 270
    :cond_78
    const/4 v0, 0x0

    move v8, v0

    goto :goto_34

    .line 277
    :cond_7b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_44

    .line 278
    :cond_80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_4f

    .line 279
    :cond_85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v0

    goto :goto_5a

    .line 284
    :cond_8a
    const/16 v0, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 285
    const/4 v0, 0x0

    move v2, v0

    :goto_92
    if-ge v2, v3, :cond_5c

    .line 286
    sget-object v0, Ldbxyzptlk/D/a;->z:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 287
    sget-object v0, Ldbxyzptlk/D/a;->L:[I

    aput v4, v0, v2

    .line 291
    sget-object v5, Ldbxyzptlk/D/a;->I:[F

    if-eqz v8, :cond_11c

    sget-object v0, Ldbxyzptlk/D/a;->B:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c9
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v2

    .line 292
    sget-object v5, Ldbxyzptlk/D/a;->J:[F

    if-eqz v8, :cond_12d

    sget-object v0, Ldbxyzptlk/D/a;->C:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v7, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_ec
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v2

    .line 293
    sget-object v5, Ldbxyzptlk/D/a;->K:[F

    if-eqz v8, :cond_13e

    sget-object v0, Ldbxyzptlk/D/a;->D:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    const/4 v4, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_10f
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v5, v2

    .line 285
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_92

    .line 291
    :cond_11c
    sget-object v0, Ldbxyzptlk/D/a;->E:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c9

    .line 292
    :cond_12d
    sget-object v0, Ldbxyzptlk/D/a;->F:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_ec

    .line 293
    :cond_13e
    sget-object v0, Ldbxyzptlk/D/a;->A:Ljava/lang/reflect/Method;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_10f

    :cond_14f
    move v6, v10

    .line 298
    goto/16 :goto_67

    :cond_152
    const/4 v0, 0x1

    if-eq v10, v0, :cond_166

    const/4 v0, 0x1

    sget v7, Ldbxyzptlk/D/a;->H:I

    shl-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v10

    sget v7, Ldbxyzptlk/D/a;->G:I

    if-eq v0, v7, :cond_166

    const/4 v0, 0x3

    if-eq v10, v0, :cond_166

    const/4 v7, 0x1

    goto/16 :goto_6a

    :cond_166
    const/4 v7, 0x0

    goto/16 :goto_6a

    :cond_169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J
    :try_end_16c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16c} :catch_172

    move-result-wide v8

    goto/16 :goto_70

    .line 306
    :cond_16f
    const/4 v0, 0x1

    goto/16 :goto_1f

    .line 307
    :catch_172
    move-exception v0

    .line 309
    const-string v1, "MultiTouchController"

    const-string v2, "onTouchEvent() failed"

    invoke-static {v1, v2, v0}, Ldbxyzptlk/h/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    const/4 v0, 0x0

    goto/16 :goto_1f
.end method
