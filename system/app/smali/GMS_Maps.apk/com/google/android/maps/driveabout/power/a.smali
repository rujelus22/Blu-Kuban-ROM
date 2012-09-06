.class public Lcom/google/android/maps/driveabout/power/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/google/android/maps/driveabout/power/a;

.field private static b:Lcom/google/android/maps/driveabout/power/a;

.field private static final c:Ljava/util/Set;

.field private static final d:Lcom/google/android/maps/driveabout/power/g;


# instance fields
.field private final e:Lcom/google/android/maps/driveabout/power/i;

.field private final f:Landroid/view/Window;

.field private final g:Lcom/google/android/maps/driveabout/power/e;

.field private final h:F

.field private final i:Lm/o;

.field private final j:I

.field private k:I

.field private final l:Ljava/lang/Runnable;

.field private final m:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/maps/driveabout/power/b;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/b;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/power/a;->a:Lcom/google/android/maps/driveabout/power/a;

    .line 49
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->a:Lcom/google/android/maps/driveabout/power/a;

    sput-object v0, Lcom/google/android/maps/driveabout/power/a;->b:Lcom/google/android/maps/driveabout/power/a;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/power/a;->c:Ljava/util/Set;

    .line 60
    new-instance v0, Lcom/google/android/maps/driveabout/power/g;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/g;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/power/a;->d:Lcom/google/android/maps/driveabout/power/g;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 228
    new-instance v3, Lcom/google/android/maps/driveabout/power/h;

    invoke-direct {v3}, Lcom/google/android/maps/driveabout/power/h;-><init>()V

    const/high16 v4, 0x7fc0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v2, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/driveabout/power/a;-><init>(Lcom/google/android/maps/driveabout/power/i;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/e;FLm/o;I)V

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/power/b;)V
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/power/i;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/e;FLm/o;I)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/power/a;->k:I

    .line 207
    new-instance v0, Lcom/google/android/maps/driveabout/power/c;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/power/c;-><init>(Lcom/google/android/maps/driveabout/power/a;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->l:Ljava/lang/Runnable;

    .line 216
    new-instance v0, Lcom/google/android/maps/driveabout/power/d;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/power/d;-><init>(Lcom/google/android/maps/driveabout/power/a;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->m:Ljava/lang/Runnable;

    .line 234
    iput-object p1, p0, Lcom/google/android/maps/driveabout/power/a;->e:Lcom/google/android/maps/driveabout/power/i;

    .line 235
    iput-object p2, p0, Lcom/google/android/maps/driveabout/power/a;->f:Landroid/view/Window;

    .line 236
    iput-object p3, p0, Lcom/google/android/maps/driveabout/power/a;->g:Lcom/google/android/maps/driveabout/power/e;

    .line 237
    iput p4, p0, Lcom/google/android/maps/driveabout/power/a;->h:F

    .line 238
    iput-object p5, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    .line 239
    iput p6, p0, Lcom/google/android/maps/driveabout/power/a;->j:I

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/maps/driveabout/power/i;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/e;FLm/o;ILcom/google/android/maps/driveabout/power/b;)V
    .registers 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct/range {p0 .. p6}, Lcom/google/android/maps/driveabout/power/a;-><init>(Lcom/google/android/maps/driveabout/power/i;Landroid/view/Window;Lcom/google/android/maps/driveabout/power/e;FLm/o;I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/power/a;)Landroid/view/Window;
    .registers 2
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->f:Landroid/view/Window;

    return-object v0
.end method

.method public static a()Lcom/google/android/maps/driveabout/power/f;
    .registers 1

    .prologue
    .line 421
    new-instance v0, Lcom/google/android/maps/driveabout/power/f;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/power/f;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 5
    .parameter

    .prologue
    .line 101
    const-class v1, Lcom/google/android/maps/driveabout/power/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->b:Lcom/google/android/maps/driveabout/power/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Veto has been cast by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/power/a;->f(Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_22

    .line 104
    monitor-exit v1

    return-void

    .line 101
    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lo/r;)V
    .registers 2
    .parameter

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->d:Lcom/google/android/maps/driveabout/power/g;

    invoke-virtual {p0, v0}, Lo/r;->a(Lo/o;)V

    .line 80
    return-void
.end method

.method static synthetic b(Lcom/google/android/maps/driveabout/power/a;)F
    .registers 2
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/maps/driveabout/power/a;->h:F

    return v0
.end method

.method static synthetic b()Lcom/google/android/maps/driveabout/power/a;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->b:Lcom/google/android/maps/driveabout/power/a;

    return-object v0
.end method

.method public static declared-synchronized b(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 114
    const-class v1, Lcom/google/android/maps/driveabout/power/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 115
    monitor-exit v1

    return-void

    .line 114
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Lo/r;)V
    .registers 2
    .parameter

    .prologue
    .line 89
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->d:Lcom/google/android/maps/driveabout/power/g;

    invoke-virtual {p0, v0}, Lo/r;->b(Lo/o;)V

    .line 90
    return-void
.end method

.method private c()V
    .registers 5

    .prologue
    .line 269
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->e:Lcom/google/android/maps/driveabout/power/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->f:Landroid/view/Window;

    if-nez v0, :cond_9

    .line 274
    :cond_8
    :goto_8
    return-void

    .line 273
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->e:Lcom/google/android/maps/driveabout/power/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/a;->l:Ljava/lang/Runnable;

    const-wide/32 v2, 0xea60

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/maps/driveabout/power/i;->a(Ljava/lang/Runnable;J)V

    goto :goto_8
.end method

.method public static declared-synchronized c(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 123
    const-class v1, Lcom/google/android/maps/driveabout/power/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->b:Lcom/google/android/maps/driveabout/power/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/power/a;->e(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 124
    monitor-exit v1

    return-void

    .line 123
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic c(Lcom/google/android/maps/driveabout/power/a;)Z
    .registers 2
    .parameter

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/google/android/maps/driveabout/power/a;)I
    .registers 2
    .parameter

    .prologue
    .line 35
    iget v0, p0, Lcom/google/android/maps/driveabout/power/a;->k:I

    return v0
.end method

.method private d()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->e:Lcom/google/android/maps/driveabout/power/i;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->f:Landroid/view/Window;

    if-nez v0, :cond_9

    .line 285
    :cond_8
    :goto_8
    return-void

    .line 282
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->e:Lcom/google/android/maps/driveabout/power/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/a;->l:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/power/i;->b(Ljava/lang/Runnable;)V

    .line 284
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->e:Lcom/google/android/maps/driveabout/power/i;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/power/a;->m:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/power/i;->a(Ljava/lang/Runnable;)V

    goto :goto_8
.end method

.method public static declared-synchronized d(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 132
    const-class v1, Lcom/google/android/maps/driveabout/power/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->b:Lcom/google/android/maps/driveabout/power/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/power/a;->f(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 133
    monitor-exit v1

    return-void

    .line 132
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    if-nez v0, :cond_5

    .line 294
    :goto_4
    return-void

    .line 292
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    invoke-virtual {v0}, Lm/o;->g()V

    .line 293
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    iget v1, p0, Lcom/google/android/maps/driveabout/power/a;->j:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lm/o;->a(J)V

    goto :goto_4
.end method

.method static synthetic e(Lcom/google/android/maps/driveabout/power/a;)V
    .registers 1
    .parameter

    .prologue
    .line 35
    invoke-static {p0}, Lcom/google/android/maps/driveabout/power/a;->f(Lcom/google/android/maps/driveabout/power/a;)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 243
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 253
    :goto_8
    return-void

    .line 249
    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;->c()V

    .line 250
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;->e()V

    .line 251
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;->h()V

    .line 252
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/power/a;->k:I

    goto :goto_8
.end method

.method private f()V
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    if-nez v0, :cond_5

    .line 303
    :goto_4
    return-void

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    invoke-virtual {v0}, Lm/o;->g()V

    .line 302
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    invoke-virtual {v0}, Lm/o;->e()V

    goto :goto_4
.end method

.method private static declared-synchronized f(Lcom/google/android/maps/driveabout/power/a;)V
    .registers 3
    .parameter

    .prologue
    .line 147
    const-class v1, Lcom/google/android/maps/driveabout/power/a;

    monitor-enter v1

    :try_start_3
    const-string v0, "New power manager created"

    invoke-static {v0}, Lcom/google/android/maps/driveabout/power/a;->d(Ljava/lang/String;)V

    .line 149
    sput-object p0, Lcom/google/android/maps/driveabout/power/a;->b:Lcom/google/android/maps/driveabout/power/a;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    .line 150
    monitor-exit v1

    return-void

    .line 147
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 3
    .parameter

    .prologue
    .line 256
    sget-object v0, Lcom/google/android/maps/driveabout/power/a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 266
    :goto_8
    return-void

    .line 262
    :cond_9
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;->d()V

    .line 263
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;->f()V

    .line 264
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/power/a;->i()V

    .line 265
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/power/a;->k:I

    goto :goto_8
.end method

.method private g()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->g:Lcom/google/android/maps/driveabout/power/e;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/power/e;->a()Z

    move-result v0

    return v0
.end method

.method private h()V
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    if-nez v0, :cond_5

    .line 321
    :goto_4
    return-void

    .line 320
    :cond_5
    iget v0, p0, Lcom/google/android/maps/driveabout/power/a;->j:I

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bN;->a(I)V

    goto :goto_4
.end method

.method private i()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/maps/driveabout/power/a;->i:Lm/o;

    if-nez v0, :cond_5

    .line 334
    :goto_4
    return-void

    .line 333
    :cond_5
    const/16 v0, 0x7d0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/app/bN;->a(I)V

    goto :goto_4
.end method
