.class public Lcom/google/android/maps/driveabout/vector/cy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bt;
.implements Lcom/google/android/maps/driveabout/vector/o;


# static fields
.field public static volatile a:Z

.field static final b:Ljava/lang/ThreadLocal;

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final l:Ljava/util/Comparator;


# instance fields
.field private final A:Lcom/google/android/maps/driveabout/vector/bX;

.field private final B:Lcom/google/android/maps/driveabout/vector/A;

.field private final C:Lcom/google/android/maps/driveabout/vector/S;

.field private final D:Ly/b;

.field private E:Ly/c;

.field private final F:Ljava/util/HashSet;

.field private final G:Ljava/util/HashSet;

.field private final H:[I

.field private final I:Ljava/util/List;

.field private J:J

.field private K:Z

.field private final L:Lcom/google/android/maps/driveabout/vector/dd;

.field private M:Ljava/util/List;

.field private N:Z

.field private O:Landroid/graphics/Bitmap;

.field private P:Z

.field private Q:F

.field private R:J

.field private volatile S:Lcom/google/android/maps/driveabout/vector/D;

.field private final T:Ljava/util/List;

.field private U:Lcom/google/android/maps/driveabout/vector/cu;

.field private volatile V:Lcom/google/android/maps/driveabout/vector/cu;

.field private volatile W:Lcom/google/android/maps/driveabout/vector/cu;

.field private volatile X:Z

.field private Y:J

.field private Z:I

.field private volatile aa:Lcom/google/android/maps/driveabout/vector/db;

.field private ab:Z

.field private volatile ac:F

.field private volatile ad:Z

.field private ae:Z

.field private af:Ljava/lang/Object;

.field private ag:Z

.field private volatile ah:I

.field private ai:Z

.field private aj:I

.field private ak:Z

.field private al:Lz/p;

.field private final am:Lz/j;

.field private volatile an:J

.field private ao:Ljava/lang/Object;

.field protected c:Ljava/util/Map;

.field protected d:Ljava/util/List;

.field protected e:Z

.field private volatile j:Lcom/google/android/maps/driveabout/vector/bZ;

.field private volatile k:Lcom/google/android/maps/driveabout/vector/l;

.field private m:Lcom/google/android/maps/driveabout/vector/aU;

.field private volatile n:I

.field private volatile o:I

.field private final p:Ljava/util/LinkedList;

.field private final q:Ljava/util/ArrayList;

.field private final r:Ljava/util/ArrayList;

.field private final s:Ljava/util/ArrayList;

.field private final t:Lcom/google/android/maps/driveabout/vector/k;

.field private final u:Lcom/google/android/maps/driveabout/vector/I;

.field private final v:Lcom/google/android/maps/driveabout/vector/cp;

.field private final w:Landroid/content/res/Resources;

.field private final x:F

.field private y:Lcom/google/android/maps/driveabout/vector/cb;

.field private final z:Lcom/google/android/maps/driveabout/vector/bX;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x4

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Z

    .line 77
    new-array v0, v1, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->f:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->g:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->h:[I

    .line 92
    new-array v0, v1, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->i:[I

    .line 114
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cz;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cz;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->b:Ljava/lang/ThreadLocal;

    .line 130
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cA;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cA;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/cy;->l:Ljava/util/Comparator;

    return-void

    .line 77
    nop

    :array_30
    .array-data 0x4
        0x0t 0xedt 0x0t 0x0t
        0x0t 0xeat 0x0t 0x0t
        0x0t 0xe2t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    .line 82
    :array_3c
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    .line 87
    :array_48
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    .line 92
    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/I;Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/db;Lz/j;Lz/p;)V
    .registers 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->o:I

    .line 241
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->F:Ljava/util/HashSet;

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->G:Ljava/util/HashSet;

    .line 253
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->H:[I

    .line 258
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->I:Ljava/util/List;

    .line 262
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->J:J

    .line 270
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cB;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/cB;-><init>(Lcom/google/android/maps/driveabout/vector/cy;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->L:Lcom/google/android/maps/driveabout/vector/dd;

    .line 326
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->T:Ljava/util/List;

    .line 390
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->af:Ljava/lang/Object;

    .line 395
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->ag:Z

    .line 408
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->ah:I

    .line 416
    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->ai:Z

    .line 421
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aj:I

    .line 460
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->c:Ljava/util/Map;

    .line 466
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->d:Ljava/util/List;

    .line 468
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->e:Z

    .line 735
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->an:J

    .line 740
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ao:Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/google/android/maps/driveabout/vector/bZ;->s:Lcom/google/android/maps/driveabout/vector/bZ;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    .line 510
    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->a:Lcom/google/android/maps/driveabout/vector/D;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->S:Lcom/google/android/maps/driveabout/vector/D;

    .line 511
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    .line 512
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cp;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/cp;-><init>(Lcom/google/android/maps/driveabout/vector/cy;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->v:Lcom/google/android/maps/driveabout/vector/cp;

    .line 513
    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/cy;->w:Landroid/content/res/Resources;

    .line 514
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->x:F

    .line 515
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->x:F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ax;->a(F)V

    .line 516
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->x:F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/an;->a(F)V

    .line 518
    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    .line 519
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    .line 522
    iput-object p4, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    .line 524
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->s:Ljava/util/ArrayList;

    .line 531
    new-instance v0, Lcom/google/android/maps/driveabout/vector/S;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/vector/S;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    .line 532
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bX;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bX;-><init>(ILcom/google/android/maps/driveabout/vector/S;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->z:Lcom/google/android/maps/driveabout/vector/bX;

    .line 533
    new-instance v0, Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/bX;-><init>(ILcom/google/android/maps/driveabout/vector/S;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->A:Lcom/google/android/maps/driveabout/vector/bX;

    .line 534
    new-instance v0, Lcom/google/android/maps/driveabout/vector/A;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/A;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->B:Lcom/google/android/maps/driveabout/vector/A;

    .line 535
    new-instance v0, Ly/b;

    invoke-direct {v0}, Ly/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->D:Ly/b;

    .line 537
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->z:Lcom/google/android/maps/driveabout/vector/bX;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 539
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->D:Ly/b;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 541
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->B:Lcom/google/android/maps/driveabout/vector/A;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 543
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aT;

    const v1, 0x1d4c0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;-><init>(I)V

    .line 545
    sget-object v1, Lcom/google/android/maps/driveabout/vector/D;->c:Lcom/google/android/maps/driveabout/vector/D;

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aT;->a(Lcom/google/android/maps/driveabout/vector/D;I)V

    .line 546
    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 547
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aS;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aS;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 549
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/dD;->a()Z

    move-result v0

    if-eqz v0, :cond_130

    .line 550
    new-instance v0, Ly/c;

    invoke-direct {v0, p2}, Ly/c;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    .line 551
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->D:Ly/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    invoke-virtual {v0, v1}, Ly/b;->a(Ly/a;)V

    .line 563
    :goto_119
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->L:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 566
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/db;->b(Z)V

    .line 571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->R:J

    .line 573
    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/cy;->am:Lz/j;

    .line 574
    iput-object p6, p0, Lcom/google/android/maps/driveabout/vector/cy;->al:Lz/p;

    .line 584
    return-void

    .line 553
    :cond_130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    goto :goto_119
.end method

.method static a(IIF)F
    .registers 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 902
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 903
    int-to-float v0, v0

    const/high16 v1, 0x4380

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    .line 907
    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    .line 912
    const/high16 v1, 0x4000

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/k;->a(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/cy;)Ly/c;
    .registers 2
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aU;)V
    .registers 5
    .parameter

    .prologue
    .line 621
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 622
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 623
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aD;->a_(Lcom/google/android/maps/driveabout/vector/aU;)V

    goto :goto_9

    .line 626
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 625
    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ai:Z

    .line 626
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_19

    .line 627
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 7
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1815
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v0

    .line 1816
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v1

    .line 1818
    if-lez v0, :cond_2b

    if-lez v1, :cond_2b

    .line 1824
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 1825
    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1826
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1827
    invoke-interface {v2, v4, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 1829
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->u()[F

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 1833
    const/16 v3, 0xc11

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 1834
    invoke-interface {v2, v4, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 1837
    :cond_2b
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;IZZ)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cy;->u()Lcom/google/android/maps/driveabout/vector/cD;

    move-result-object v8

    .line 1358
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1360
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->b()[Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v2, :cond_1a

    aget-object v3, v1, v0

    .line 1361
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/db;->h()V

    .line 1360
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1366
    :cond_1a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->A()V

    .line 1368
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->S:Lcom/google/android/maps/driveabout/vector/D;

    .line 1369
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->h()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->Q:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_34

    .line 1370
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 1371
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->Q:F

    .line 1373
    :cond_34
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cy;->b(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 1377
    const/4 v0, 0x0

    :goto_38
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->a()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    .line 1378
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->a()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/google/android/maps/driveabout/vector/aD;->a(I)V

    .line 1377
    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    .line 1385
    :cond_4b
    if-eqz p3, :cond_b3

    .line 1386
    const/4 v0, 0x0

    :goto_4e
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->a()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_63

    .line 1387
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->a()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v1, p1, v3}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 1386
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1389
    :cond_63
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->I:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1390
    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/cy;->a:Z

    if-eqz v0, :cond_ac

    .line 1391
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->b()[Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_73
    if-ge v3, v5, :cond_ac

    aget-object v0, v4, v3

    .line 1392
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7f
    :goto_7f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aV;

    .line 1393
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aV;->e()Lcom/google/android/maps/driveabout/vector/ad;

    move-result-object v1

    .line 1394
    if-nez v1, :cond_9a

    .line 1395
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/aV;Lcom/google/android/maps/driveabout/vector/k;)Lcom/google/android/maps/driveabout/vector/ad;

    move-result-object v1

    .line 1396
    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/aV;->a(Lcom/google/android/maps/driveabout/vector/ad;)V

    :cond_9a
    move-object v0, v1

    .line 1398
    if-eqz v0, :cond_7f

    .line 1399
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/ad;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/aU;)Z

    .line 1400
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->I:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 1391
    :cond_a8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_73

    .line 1405
    :cond_ac
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->B:Lcom/google/android/maps/driveabout/vector/A;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->I:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/A;->a(Ljava/util/List;)V

    .line 1416
    :cond_b3
    if-eqz p4, :cond_c4

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->f:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v2, v0, :cond_c4

    sget-object v0, Lcom/google/android/maps/driveabout/vector/D;->e:Lcom/google/android/maps/driveabout/vector/D;

    if-eq v2, v0, :cond_c4

    .line 1417
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->b()[Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/k;IZ[Lcom/google/android/maps/driveabout/vector/db;)V

    .line 1423
    :cond_c4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    if-eqz v0, :cond_11a

    .line 1425
    monitor-enter p0

    .line 1426
    :try_start_c9
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->K:Z

    .line 1427
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->K:Z

    .line 1428
    monitor-exit p0
    :try_end_cf
    .catchall {:try_start_c9 .. :try_end_cf} :catchall_10c

    .line 1429
    if-eqz v0, :cond_11a

    .line 1430
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->F:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1431
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->G:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1432
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->H:[I

    const/4 v1, 0x0

    const/4 v3, -0x1

    aput v3, v0, v1

    .line 1433
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->H:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 1434
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->b()[Lcom/google/android/maps/driveabout/vector/db;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_ed
    if-ge v7, v10, :cond_10f

    aget-object v0, v9, v7

    .line 1435
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->F:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->G:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cy;->H:[I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/D;Ljava/util/HashSet;Ljava/util/HashSet;[I)V

    .line 1437
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->H:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le v0, v6, :cond_239

    .line 1438
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->H:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1434
    :goto_107
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_ed

    .line 1428
    :catchall_10c
    move-exception v0

    :try_start_10d
    monitor-exit p0
    :try_end_10e
    .catchall {:try_start_10d .. :try_end_10e} :catchall_10c

    throw v0

    .line 1441
    :cond_10f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->F:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->G:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->S:Lcom/google/android/maps/driveabout/vector/D;

    invoke-virtual {v0, v1, v3, v6, v4}, Ly/c;->a(Ljava/util/HashSet;Ljava/util/HashSet;ILcom/google/android/maps/driveabout/vector/D;)V

    .line 1446
    :cond_11a
    if-nez p3, :cond_11e

    if-eqz p2, :cond_197

    :cond_11e
    const/4 v0, 0x1

    :goto_11f
    invoke-virtual {p0, v8, v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/cD;Z)V

    .line 1448
    new-instance v3, Lcom/google/android/maps/driveabout/vector/cG;

    const/4 v0, 0x0

    invoke-direct {v3, v2, v0}, Lcom/google/android/maps/driveabout/vector/cG;-><init>(Lcom/google/android/maps/driveabout/vector/D;I)V

    .line 1450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ak:Z

    .line 1466
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->l()V

    .line 1467
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->q()V

    .line 1471
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13b
    :goto_13b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cv;

    .line 1472
    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cG;->a(Lcom/google/android/maps/driveabout/vector/cv;)V

    .line 1473
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->a()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    .line 1475
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v4, :cond_157

    .line 1476
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 1479
    :cond_157
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->b()Lcom/google/android/maps/driveabout/vector/cw;

    move-result-object v0

    sget-object v4, Lcom/google/android/maps/driveabout/vector/cw;->a:Lcom/google/android/maps/driveabout/vector/cw;

    if-ne v0, v4, :cond_16a

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    sget-object v4, Lcom/google/android/maps/driveabout/vector/dg;->a:Lcom/google/android/maps/driveabout/vector/dg;

    if-ne v0, v4, :cond_16a

    .line 1484
    :cond_16a
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->y()V

    .line 1485
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v1, v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/k;Lcom/google/android/maps/driveabout/vector/E;)V

    .line 1486
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->z()V

    .line 1491
    instance-of v0, v1, Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v0, :cond_18d

    .line 1492
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ak:Z

    if-eqz v0, :cond_199

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->o()Z

    move-result v0

    if-eqz v0, :cond_199

    const/4 v0, 0x1

    :goto_18b
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ak:Z

    .line 1496
    :cond_18d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_13b

    .line 1497
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_13b

    .line 1446
    :cond_197
    const/4 v0, 0x0

    goto :goto_11f

    .line 1492
    :cond_199
    const/4 v0, 0x0

    goto :goto_18b

    .line 1502
    :cond_19b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->A()V

    .line 1505
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 1506
    if-eqz v0, :cond_21d

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1508
    const/16 v2, 0x505

    if-ne v0, v2, :cond_1d7

    .line 1509
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->Y:J

    sub-long/2addr v2, v4

    .line 1510
    const-string v4, "\nTime in current GL context: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    invoke-static {}, Lj/a;->a()Lj/a;

    move-result-object v2

    invoke-virtual {v2}, Lj/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1512
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->X:Z

    .line 1514
    :cond_1d7
    const-string v2, "Renderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GL Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lh/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    const-string v2, "Renderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "drawFrameInternal GL ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1518
    :cond_21d
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->X:Z

    if-eqz v1, :cond_221

    .line 1524
    :cond_221
    const/16 v1, 0x505

    if-ne v0, v1, :cond_235

    .line 1526
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cD;->a()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_22b
    if-ge v0, v2, :cond_235

    aget-object v3, v1, v0

    .line 1527
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aD;->b()V

    .line 1526
    add-int/lit8 v0, v0, 0x1

    goto :goto_22b

    .line 1530
    :cond_235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->X:Z

    .line 1531
    return-void

    :cond_239
    move v0, v6

    goto/16 :goto_107
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/k;IZ[Lcom/google/android/maps/driveabout/vector/db;)V
    .registers 16
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_e

    .line 1728
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    if-nez p3, :cond_32

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/cb;Z)V

    .line 1731
    :cond_e
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_34

    const/4 v0, 0x1

    .line 1733
    :goto_13
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v1, p2}, Lcom/google/android/maps/driveabout/vector/cb;->a(I)V

    .line 1734
    if-eqz v0, :cond_36

    .line 1737
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->w()Ln/aK;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Ln/aM;)V

    .line 1738
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->P:Z

    .line 1786
    :goto_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v0, :cond_31

    .line 1787
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/cb;)V

    .line 1789
    :cond_31
    return-void

    .line 1728
    :cond_32
    const/4 v0, 0x0

    goto :goto_b

    .line 1731
    :cond_34
    const/4 v0, 0x0

    goto :goto_13

    .line 1740
    :cond_36
    if-nez p3, :cond_44

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->P:Z

    if-nez v0, :cond_44

    .line 1744
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->b(I)V

    goto :goto_26

    .line 1748
    :cond_44
    new-instance v5, Lcom/google/android/maps/driveabout/vector/ct;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/vector/ct;-><init>()V

    .line 1749
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1750
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->w()Ln/aK;

    move-result-object v2

    .line 1751
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->k()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_80

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_80

    const/4 v0, 0x1

    .line 1754
    :goto_65
    if-eqz v0, :cond_82

    const/4 v0, 0x0

    .line 1755
    :goto_68
    const/4 v3, 0x0

    .line 1756
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v7

    .line 1757
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v8

    .line 1759
    array-length v4, p4

    const/4 v1, 0x0

    :goto_73
    if-ge v1, v4, :cond_90

    aget-object v9, p4, v1

    .line 1760
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/db;->i()Z

    move-result v10

    if-nez v10, :cond_84

    .line 1759
    :goto_7d
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    .line 1751
    :cond_80
    const/4 v0, 0x0

    goto :goto_65

    :cond_82
    move-object v0, v2

    .line 1754
    goto :goto_68

    .line 1763
    :cond_84
    invoke-virtual {v9, v0, v5, v6}, Lcom/google/android/maps/driveabout/vector/db;->a(Ln/aK;Lcom/google/android/maps/driveabout/vector/ct;Ljava/util/Set;)I

    move-result v10

    .line 1765
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1766
    invoke-virtual {v9, v7, v8}, Lcom/google/android/maps/driveabout/vector/db;->a(Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_7d

    .line 1769
    :cond_90
    monitor-enter p0

    .line 1770
    :try_start_91
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->M:Ljava/util/List;

    if-eqz v0, :cond_af

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->M:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1772
    :goto_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_91 .. :try_end_9c} :catchall_b1

    .line 1773
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    const/16 v9, 0x14

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v10

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/k;Ln/aM;ILjava/util/Iterator;Lcom/google/android/maps/driveabout/vector/ct;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;ILcom/google/android/maps/driveabout/vector/dg;)V

    .line 1783
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->P:Z

    goto/16 :goto_26

    .line 1770
    :cond_af
    const/4 v4, 0x0

    goto :goto_9b

    .line 1772
    :catchall_b1
    move-exception v0

    :try_start_b2
    monitor-exit p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/cy;Z)Z
    .registers 2
    .parameter
    .parameter

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cy;->K:Z

    return p1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/D;)[I
    .registers 3
    .parameter

    .prologue
    .line 487
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cC;->a:[I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/D;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    .line 495
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->i:[I

    :goto_d
    return-object v0

    .line 488
    :pswitch_e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->f:[I

    goto :goto_d

    .line 489
    :pswitch_11
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->f:[I

    goto :goto_d

    .line 492
    :pswitch_14
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->f:[I

    goto :goto_d

    .line 493
    :pswitch_17
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->g:[I

    goto :goto_d

    .line 494
    :pswitch_1a
    sget-object v0, Lcom/google/android/maps/driveabout/vector/cy;->h:[I

    goto :goto_d

    .line 487
    nop

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
    .end packed-switch
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/k;)V
    .registers 5
    .parameter

    .prologue
    .line 1846
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 1847
    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 1848
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 1849
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/k;->t()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 1850
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 9
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1793
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 1794
    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/D;)[I

    move-result-object v0

    .line 1795
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 1796
    const/16 v0, 0x4000

    .line 1798
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aU;->g()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 1799
    const/16 v0, 0x4100

    .line 1800
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aU;->h()V

    .line 1803
    :cond_28
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aU;->i()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1804
    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 1805
    or-int/lit16 v0, v0, 0x400

    .line 1806
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aU;->j()V

    .line 1809
    :cond_3a
    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 1812
    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 7
    .parameter

    .prologue
    .line 1579
    invoke-static {}, Lcom/google/googlenav/common/c;->a()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1580
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v0, :cond_5a

    move-object v0, p1

    .line 1581
    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    .line 1582
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aD;

    .line 1583
    instance-of v3, v1, Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v3, :cond_13

    .line 1584
    check-cast v1, Lcom/google/android/maps/driveabout/vector/db;

    .line 1585
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/db;->q()Lj/e;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->q()Lj/e;

    move-result-object v4

    if-ne v3, v4, :cond_13

    .line 1587
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The added tile Overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " shares the same GLTileCache with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/db;->m()Lcom/google/android/maps/driveabout/vector/dg;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1599
    :cond_5a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->e:Z

    .line 1600
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1601
    return-void
.end method

.method private d(I)V
    .registers 10
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1266
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->c()Z

    move-result v0

    if-eqz v0, :cond_c6

    :cond_e
    move v0, v2

    .line 1269
    :goto_f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/I;->a(Z)V

    .line 1271
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->e()V

    .line 1272
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->h()Z

    move-result v0

    .line 1273
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/k;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/vector/cy;->J:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_36

    .line 1274
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->a()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->J:J

    move v0, v2

    .line 1279
    :cond_36
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cy;->v()V

    .line 1282
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->V:Lcom/google/android/maps/driveabout/vector/cu;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    .line 1283
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v3, :cond_4b

    .line 1284
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v3, p0}, Lcom/google/android/maps/driveabout/vector/cu;->a(Lcom/google/android/maps/driveabout/vector/cy;)V

    .line 1285
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cu;->a()V

    .line 1288
    :cond_4b
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->W:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v3, :cond_54

    .line 1289
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->W:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cu;->a()V

    .line 1295
    :cond_54
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/k;->i()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6a

    .line 1297
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/k;IZZ)V

    .line 1298
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aU;->f()V

    .line 1301
    :cond_6a
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->ak:Z

    if-eqz v3, :cond_c9

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/cb;->c()Z

    move-result v3

    if-nez v3, :cond_c9

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aU;->c()Z

    move-result v3

    if-nez v3, :cond_c9

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/I;->i()Z

    move-result v3

    if-nez v3, :cond_c9

    .line 1306
    :goto_86
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    if-eqz v3, :cond_9c

    .line 1307
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/cu;->b(Z)V

    .line 1308
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->U:Lcom/google/android/maps/driveabout/vector/cu;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cu;->b()Z

    move-result v2

    if-eqz v2, :cond_9c

    .line 1309
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v2, v1, v1}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 1314
    :cond_9c
    monitor-enter p0

    .line 1315
    :try_start_9d
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->N:Z

    .line 1316
    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_cb

    .line 1318
    if-eqz v2, :cond_b0

    .line 1319
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cy;->t()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1320
    monitor-enter p0

    .line 1321
    :try_start_a7
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->O:Landroid/graphics/Bitmap;

    .line 1322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->N:Z

    .line 1323
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1324
    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_ce

    .line 1327
    :cond_b0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/cb;->c()Z

    move-result v2

    if-nez v2, :cond_c0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aU;->c()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 1329
    :cond_c0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 1347
    :cond_c5
    :goto_c5
    return-void

    :cond_c6
    move v0, v1

    .line 1266
    goto/16 :goto_f

    :cond_c9
    move v2, v1

    .line 1301
    goto :goto_86

    .line 1316
    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0

    .line 1324
    :catchall_ce
    move-exception v0

    :try_start_cf
    monitor-exit p0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v0

    .line 1333
    :cond_d1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_ee

    if-nez v0, :cond_ee

    if-nez p1, :cond_ee

    .line 1338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1339
    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->R:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_ee

    .line 1340
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1341
    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->R:J

    .line 1344
    :cond_ee
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_c5

    .line 1345
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    goto :goto_c5
.end method

.method private r()V
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    if-eqz v0, :cond_9

    .line 631
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a()V

    .line 633
    :cond_9
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_1b

    .line 634
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->D()Lcom/google/android/maps/driveabout/vector/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/r;->a()V

    .line 635
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/cX;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 637
    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_24

    .line 638
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->A()V

    .line 640
    :cond_24
    return-void
.end method

.method private s()V
    .registers 5

    .prologue
    .line 951
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->n:I

    if-gez v0, :cond_5

    .line 961
    :goto_4
    return-void

    .line 954
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ab:Z

    if-eqz v0, :cond_2b

    const/16 v0, 0xa

    .line 956
    :goto_b
    :try_start_b
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->n:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_4

    .line 958
    :catch_11
    move-exception v0

    .line 959
    const-string v1, "Renderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not set thread priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lh/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 954
    :cond_2b
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->o:I

    goto :goto_b
.end method

.method private t()Landroid/graphics/Bitmap;
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 1559
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    .line 1560
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/k;->e()I

    move-result v3

    .line 1561
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/k;->f()I

    move-result v4

    .line 1562
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->v:Lcom/google/android/maps/driveabout/vector/cp;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/cp;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1564
    invoke-static {v13}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    .line 1565
    invoke-static {v13}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    .line 1566
    mul-int v2, v3, v4

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v7

    move v2, v1

    .line 1567
    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 1568
    invoke-virtual {v7}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v6

    move-object v5, v13

    move v7, v1

    move v8, v3

    move v9, v1

    move v10, v1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 1569
    return-object v13
.end method

.method private u()Lcom/google/android/maps/driveabout/vector/cD;
    .registers 10

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 1621
    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v7

    .line 1622
    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ai:Z

    if-nez v0, :cond_2a

    .line 1625
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 1626
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V

    goto :goto_10

    .line 1718
    :catchall_24
    move-exception v0

    monitor-exit v7
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v0

    .line 1628
    :cond_27
    const/4 v0, 0x1

    :try_start_28
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ai:Z

    :cond_2a
    move v6, v1

    move v2, v1

    move v4, v1

    .line 1634
    :goto_2d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_108

    .line 1635
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->e:Z

    .line 1636
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cE;

    .line 1637
    sget-object v1, Lcom/google/android/maps/driveabout/vector/cC;->b:[I

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cE;->b:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/cF;->ordinal()I

    move-result v8

    aget v1, v1, v8

    packed-switch v1, :pswitch_data_168

    :cond_4d
    :goto_4d
    move v0, v2

    move v1, v4

    .line 1634
    :goto_4f
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    move v2, v0

    goto :goto_2d

    .line 1639
    :pswitch_55
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 1642
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/aD;->a_(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 1643
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v1, :cond_164

    .line 1644
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    check-cast v1, Lcom/google/android/maps/driveabout/vector/db;

    .line 1645
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->L:Lcom/google/android/maps/driveabout/vector/dd;

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dd;)V

    .line 1646
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1648
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/db;->u_()I

    move-result v4

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/cy;->aj:I

    if-ge v4, v8, :cond_9e

    move v4, v3

    .line 1657
    :goto_82
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/db;->j()Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 1658
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/driveabout/vector/dg;

    .line 1659
    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    goto :goto_8e

    .line 1653
    :cond_9e
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/db;->b(Z)V

    move v4, v2

    goto :goto_82

    :cond_a4
    move v1, v4

    .line 1663
    :goto_a5
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 1664
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aD;->z()Lcom/google/android/maps/driveabout/vector/b;

    move-result-object v2

    .line 1665
    if-eqz v2, :cond_b5

    .line 1666
    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/b;)V

    .line 1668
    :cond_b5
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/maps/driveabout/vector/aD;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/cH;)V

    move v0, v1

    move v1, v3

    .line 1670
    goto :goto_4f

    .line 1673
    :pswitch_c1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 1674
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/db;

    if-eqz v1, :cond_162

    .line 1675
    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aD;->u_()I

    move-result v1

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/cy;->aj:I

    if-ne v1, v8, :cond_15f

    move v1, v3

    .line 1680
    :goto_dc
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1682
    :goto_e3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->c:Ljava/util/Map;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v2, v8}, Lcom/google/android/maps/driveabout/vector/aD;->a_(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 1684
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aD;->z()Lcom/google/android/maps/driveabout/vector/b;

    move-result-object v0

    .line 1685
    if-eqz v0, :cond_fc

    .line 1686
    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->b(Lcom/google/android/maps/driveabout/vector/b;)V

    :cond_fc
    move v0, v1

    move v1, v4

    .line 1688
    goto/16 :goto_4f

    .line 1691
    :pswitch_100
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cE;->a:Lcom/google/android/maps/driveabout/vector/aD;

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    goto/16 :goto_4d

    .line 1695
    :cond_108
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1697
    if-eqz v2, :cond_141

    .line 1700
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aj:I

    .line 1702
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v5

    :goto_11b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    .line 1703
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/db;->b(Z)V

    .line 1704
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->u_()I

    move-result v5

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cy;->aj:I

    if-ge v5, v6, :cond_15d

    .line 1705
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->u_()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->aj:I

    :goto_139
    move-object v1, v0

    .line 1706
    goto :goto_11b

    .line 1709
    :cond_13b
    if-eqz v1, :cond_141

    .line 1710
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/db;->b(Z)V

    .line 1714
    :cond_141
    if-eqz v4, :cond_152

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_152

    .line 1715
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/cy;->l:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1717
    :cond_152
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cD;-><init>(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v7
    :try_end_15c
    .catchall {:try_start_28 .. :try_end_15c} :catchall_24

    return-object v0

    :cond_15d
    move-object v0, v1

    goto :goto_139

    :cond_15f
    move v1, v2

    goto/16 :goto_dc

    :cond_162
    move v1, v2

    goto :goto_e3

    :cond_164
    move v1, v2

    goto/16 :goto_a5

    .line 1637
    nop

    :pswitch_data_168
    .packed-switch 0x1
        :pswitch_55
        :pswitch_c1
        :pswitch_100
    .end packed-switch
.end method

.method private v()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1916
    monitor-enter p0

    .line 1917
    :try_start_2
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->Z:I

    .line 1918
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->Z:I

    .line 1919
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_30

    .line 1921
    if-eqz v1, :cond_36

    .line 1922
    const/4 v2, 0x2

    if-ne v1, v2, :cond_33

    const/4 v0, 0x1

    move v1, v0

    .line 1926
    :goto_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Z)V

    .line 1929
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1930
    :try_start_17
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aD;

    .line 1931
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aD;->a(Z)V

    goto :goto_1d

    .line 1933
    :catchall_2d
    move-exception v0

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_17 .. :try_end_2f} :catchall_2d

    throw v0

    .line 1919
    :catchall_30
    move-exception v0

    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    move v1, v0

    .line 1922
    goto :goto_f

    .line 1933
    :cond_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_2d

    .line 1935
    :cond_36
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    .prologue
    .line 1158
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ac:F

    return v0
.end method

.method public a(Ln/Q;)F
    .registers 6
    .parameter

    .prologue
    .line 1144
    const/high16 v0, 0x41a8

    .line 1145
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v2

    .line 1146
    :try_start_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    .line 1147
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/db;->b(Ln/Q;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    goto :goto_c

    .line 1149
    :cond_22
    monitor-exit v2

    .line 1150
    return v1

    .line 1149
    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/vector/cl;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 1018
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cl;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/maps/driveabout/vector/cl;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/S;Z)V

    return-object v0
.end method

.method public a(I)V
    .registers 2
    .parameter

    .prologue
    .line 917
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cy;->o:I

    .line 918
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cy;->s()V

    .line 919
    return-void
.end method

.method public a(II)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1891
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    if-eqz v0, :cond_9

    .line 1892
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->E:Ly/c;

    invoke-virtual {v0, p1, p2}, Ly/c;->a(II)V

    .line 1894
    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/T;)V
    .registers 3
    .parameter

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/T;)V

    .line 1025
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 5
    .parameter

    .prologue
    .line 1070
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1072
    :try_start_3
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cE;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cF;->a:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-direct {v0, v2, p1}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(Lcom/google/android/maps/driveabout/vector/cF;Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 1073
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1074
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_18

    .line 1075
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 1076
    return-void

    .line 1074
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/b;)V
    .registers 3
    .parameter

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1133
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bZ;)V
    .registers 5
    .parameter

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    if-eq p1, v0, :cond_16

    .line 1878
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cy;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    .line 1879
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    if-eqz v0, :cond_16

    .line 1880
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cb;->a(Lcom/google/android/maps/driveabout/vector/bZ;)V

    .line 1881
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 1884
    :cond_16
    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/cD;Z)V
    .registers 12
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1210
    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v5

    .line 1211
    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->e:Z

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    .line 1212
    monitor-exit v5

    .line 1260
    :goto_c
    return-void

    .line 1214
    :cond_d
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->e:Z

    .line 1215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->e:Z

    .line 1216
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cD;->a()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v6

    array-length v7, v6

    move v4, v1

    :goto_18
    if-ge v4, v7, :cond_39

    aget-object v8, v6, v4

    .line 1217
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->c:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1218
    if-nez v0, :cond_30

    .line 1219
    invoke-static {}, Lcom/google/common/collect/cx;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 1220
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->c:Ljava/util/Map;

    invoke-interface {v2, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    .line 1223
    :cond_30
    invoke-virtual {v8, v0}, Lcom/google/android/maps/driveabout/vector/aD;->b(Ljava/util/List;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 1216
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_18

    .line 1225
    :cond_39
    if-eqz v2, :cond_c9

    .line 1226
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1230
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/cD;->a()[Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v2

    array-length v3, v2

    :goto_45
    if-ge v1, v3, :cond_5c

    aget-object v0, v2, v1

    .line 1231
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1232
    if-eqz v0, :cond_58

    .line 1233
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->d:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1230
    :cond_58
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_45

    .line 1236
    :cond_5c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1240
    invoke-static {}, Lcom/google/common/collect/dm;->a()Ljava/util/HashSet;

    move-result-object v1

    .line 1241
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cv;

    .line 1242
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->a()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_90

    .line 1243
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cv;->a(Z)V

    .line 1244
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->a()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6b

    .line 1259
    :catchall_8d
    move-exception v0

    monitor-exit v5
    :try_end_8f
    .catchall {:try_start_5 .. :try_end_8f} :catchall_8d

    throw v0

    .line 1246
    :cond_90
    const/4 v3, 0x0

    :try_start_91
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cv;->a(Z)V

    goto :goto_6b

    .line 1249
    :cond_95
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1250
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/cx;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cv;

    .line 1251
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->a()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c4

    .line 1252
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cv;->b(Z)V

    .line 1253
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cv;->a()Lcom/google/android/maps/driveabout/vector/aD;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a2

    .line 1255
    :cond_c4
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cv;->b(Z)V

    goto :goto_a2

    .line 1259
    :cond_c9
    monitor-exit v5
    :try_end_ca
    .catchall {:try_start_91 .. :try_end_ca} :catchall_8d

    goto/16 :goto_c
.end method

.method a(Lcom/google/android/maps/driveabout/vector/cu;)V
    .registers 2
    .parameter

    .prologue
    .line 987
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cy;->V:Lcom/google/android/maps/driveabout/vector/cu;

    .line 988
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V
    .registers 4
    .parameter
    .parameter

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/S;->a(Lcom/google/android/maps/driveabout/vector/d;Lcom/google/android/maps/driveabout/vector/g;)V

    .line 1943
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/db;)V
    .registers 6
    .parameter

    .prologue
    .line 2095
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 2097
    :try_start_3
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cE;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cF;->a:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-direct {v0, v2, p1}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(Lcom/google/android/maps/driveabout/vector/cF;Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 2098
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2100
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cE;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cF;->c:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-direct {v0, v2, p1}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(Lcom/google/android/maps/driveabout/vector/cF;Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 2101
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2103
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cE;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cF;->b:Lcom/google/android/maps/driveabout/vector/cF;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    invoke-direct {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(Lcom/google/android/maps/driveabout/vector/cF;Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 2104
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2105
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_3b

    .line 2106
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    if-eqz v0, :cond_33

    .line 2107
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->b()V

    .line 2109
    :cond_33
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 2110
    return-void

    .line 2105
    :catchall_3b
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 6
    .parameter

    .prologue
    .line 1033
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1035
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    .line 1036
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->j()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1037
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/dg;)V

    goto :goto_9

    .line 1043
    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v0

    .line 1042
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1043
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_22 .. :try_end_28} :catchall_1f

    .line 1044
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/f;)V
    .registers 3
    .parameter

    .prologue
    .line 2023
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->z:Lcom/google/android/maps/driveabout/vector/bX;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bX;->a(Lcom/google/android/maps/driveabout/vector/f;)V

    .line 2024
    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .parameter

    .prologue
    .line 1113
    if-eqz p1, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1115
    :goto_7
    monitor-enter p0

    .line 1116
    :try_start_8
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->M:Ljava/util/List;

    .line 1117
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    .line 1118
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_21

    .line 1119
    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->A:Lcom/google/android/maps/driveabout/vector/bX;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->b(Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 1123
    :goto_18
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cy;->f()V

    .line 1124
    return-void

    .line 1113
    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    .line 1117
    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    .line 1121
    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->A:Lcom/google/android/maps/driveabout/vector/bX;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aD;)V

    goto :goto_18
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 9
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 781
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_23

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/L;

    if-nez v0, :cond_23

    .line 782
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GL object has changed since onSurfaceCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 784
    const-string v1, "DA:Renderer"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 785
    const-string v1, "OpenGL error during initialization."

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 790
    :cond_23
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-static {}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/K;->K()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Z)V

    .line 793
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->S:Lcom/google/android/maps/driveabout/vector/D;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->c(Lcom/google/android/maps/driveabout/vector/D;)V

    .line 797
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ah:I

    if-lez v0, :cond_45

    .line 798
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ah:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ah:I

    .line 804
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 862
    :goto_44
    return-void

    .line 812
    :cond_45
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ad:Z

    if-eqz v0, :cond_61

    .line 813
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->af:Ljava/lang/Object;

    monitor-enter v1

    .line 814
    const/4 v0, 0x0

    :try_start_4d
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ad:Z

    .line 815
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->af:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 816
    :goto_54
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ae:Z
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_8a

    if-nez v0, :cond_60

    .line 819
    :try_start_58
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->af:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_8a
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_5d} :catch_5e

    goto :goto_54

    .line 820
    :catch_5e
    move-exception v0

    goto :goto_54

    .line 824
    :cond_60
    :try_start_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_60 .. :try_end_61} :catchall_8a

    .line 829
    :cond_61
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->an:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7e

    .line 830
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->ao:Ljava/lang/Object;

    monitor-enter v1

    .line 831
    :try_start_6a
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->an:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_78

    .line 832
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->an:J

    .line 834
    :cond_78
    monitor-exit v1
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_8d

    .line 835
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->e()V

    .line 845
    :cond_7e
    invoke-static {}, Lt/m;->e()Z

    move-result v0

    if-nez v0, :cond_90

    .line 848
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v6, v6}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    goto :goto_44

    .line 824
    :catchall_8a
    move-exception v0

    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v0

    .line 834
    :catchall_8d
    move-exception v0

    :try_start_8e
    monitor-exit v1
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    throw v0

    .line 854
    :cond_90
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cy;->h()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->d(I)V

    goto :goto_44
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_1f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    instance-of v0, v0, Lcom/google/android/maps/driveabout/vector/L;

    if-nez v0, :cond_1f

    .line 706
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GL object has changed since onSurfaceCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 708
    const-string v1, "DA:Renderer"

    invoke-static {v1, v0}, LaT/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 709
    const-string v1, "OpenGL error during initialization."

    invoke-static {v1, v0}, Lh/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 711
    :cond_1f
    if-lez p2, :cond_23

    if-gtz p3, :cond_24

    .line 727
    :cond_23
    :goto_23
    return-void

    .line 715
    :cond_24
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->x:F

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/maps/driveabout/vector/k;->a(IIF)V

    .line 720
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/k;)V

    .line 721
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/k;->h()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->Q:F

    .line 723
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->x:F

    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/cy;->a(IIF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ac:F

    .line 726
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    goto :goto_23
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 644
    const-string v0, "Renderer.onSurfaceCreated"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->a(Ljava/lang/String;)V

    .line 645
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->n:I

    .line 646
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cy;->s()V

    .line 648
    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/E;->a(Ljava/lang/String;)V

    .line 650
    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 660
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_2b

    .line 661
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cy;->r()V

    .line 662
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    .line 665
    :cond_2b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    if-nez v0, :cond_74

    .line 666
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->Y:J

    .line 667
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->v:Lcom/google/android/maps/driveabout/vector/cp;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cy;->am:Lz/j;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/maps/driveabout/vector/aU;-><init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/cp;Lcom/google/android/maps/driveabout/vector/I;Lz/j;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    .line 669
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->ab:Z

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/I;->b(Z)V

    .line 673
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->w:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cX;->a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aU;)V

    .line 675
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aU;->C()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ax;->a(I)V

    .line 677
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cb;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->j:Lcom/google/android/maps/driveabout/vector/bZ;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/cb;-><init>(Lcom/google/android/maps/driveabout/vector/bZ;Lcom/google/android/maps/driveabout/vector/aU;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    .line 678
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->z:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bX;->a(Lcom/google/android/maps/driveabout/vector/cb;)V

    .line 679
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->A:Lcom/google/android/maps/driveabout/vector/bX;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bX;->a(Lcom/google/android/maps/driveabout/vector/cb;)V

    .line 688
    :cond_74
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/I;->c(Z)V

    .line 690
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->P:Z

    .line 694
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ag:Z

    if-eqz v0, :cond_82

    .line 695
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->ah:I

    .line 697
    :cond_82
    iput-boolean v4, p0, Lcom/google/android/maps/driveabout/vector/cy;->ag:Z

    .line 700
    const-string v0, "Renderer.onSurfaceCreated"

    invoke-static {v0}, Lcom/google/googlenav/common/util/o;->b(Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method declared-synchronized a(Z)V
    .registers 3
    .parameter

    .prologue
    .line 939
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/cy;->ab:Z

    .line 940
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    if-eqz v0, :cond_17

    .line 941
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/I;->b(Z)V

    .line 943
    if-nez p1, :cond_17

    .line 944
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aU;->b:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->c()V

    .line 947
    :cond_17
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cy;->s()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 948
    monitor-exit p0

    return-void

    .line 939
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)Lcom/google/android/maps/driveabout/vector/aB;
    .registers 4
    .parameter

    .prologue
    .line 1004
    new-instance v0, Lcom/google/android/maps/driveabout/vector/aB;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/aB;-><init>(ILcom/google/android/maps/driveabout/vector/S;)V

    return-object v0
.end method

.method public b()V
    .registers 2

    .prologue
    .line 610
    invoke-static {}, Lj/a;->a()Lj/a;

    move-result-object v0

    .line 611
    if-eqz v0, :cond_6

    .line 618
    :cond_6
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/D;)V
    .registers 3
    .parameter

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->S:Lcom/google/android/maps/driveabout/vector/D;

    if-eq p1, v0, :cond_e

    .line 1858
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/cy;->S:Lcom/google/android/maps/driveabout/vector/D;

    .line 1859
    monitor-enter p0

    .line 1860
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->K:Z

    .line 1861
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    .line 1862
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cy;->f()V

    .line 1864
    :cond_e
    return-void

    .line 1861
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aD;)V
    .registers 5
    .parameter

    .prologue
    .line 1084
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1086
    :try_start_3
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cE;

    sget-object v2, Lcom/google/android/maps/driveabout/vector/cF;->b:Lcom/google/android/maps/driveabout/vector/cF;

    invoke-direct {v0, v2, p1}, Lcom/google/android/maps/driveabout/vector/cE;-><init>(Lcom/google/android/maps/driveabout/vector/cF;Lcom/google/android/maps/driveabout/vector/aD;)V

    .line 1087
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1088
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_18

    .line 1089
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 1090
    return-void

    .line 1088
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/b;)V
    .registers 3
    .parameter

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->T:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1140
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/dg;)V
    .registers 6
    .parameter

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1054
    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/db;

    .line 1055
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->j()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1056
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/db;->k()Lw/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lw/e;->b(Lcom/google/android/maps/driveabout/vector/dg;)V

    goto :goto_9

    .line 1061
    :catchall_23
    move-exception v0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v0

    .line 1060
    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1061
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_23

    .line 1062
    return-void
.end method

.method public b(Z)V
    .registers 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1904
    monitor-enter p0

    .line 1905
    if-eqz p1, :cond_e

    const/4 v0, 0x2

    :goto_5
    :try_start_5
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->Z:I

    .line 1907
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    .line 1911
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 1912
    return-void

    .line 1905
    :cond_e
    const/4 v0, 0x1

    goto :goto_5

    .line 1907
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public c()V
    .registers 7

    .prologue
    .line 749
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->ao:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->an:J

    .line 752
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 754
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/I;->e()V

    .line 755
    return-void

    .line 752
    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public c(I)V
    .registers 3
    .parameter

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->z:Lcom/google/android/maps/driveabout/vector/bX;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bX;->b_(I)V

    .line 2032
    return-void
.end method

.method public d()V
    .registers 7

    .prologue
    .line 765
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->ao:Ljava/lang/Object;

    monitor-enter v1

    .line 766
    :try_start_3
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->an:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    .line 767
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->an:J

    .line 771
    :cond_14
    monitor-exit v1

    .line 772
    return-void

    .line 771
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 3

    .prologue
    .line 968
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/I;->c(Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 969
    monitor-exit p0

    return-void

    .line 968
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .registers 4

    .prologue
    .line 975
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    if-eqz v0, :cond_10

    .line 976
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->y:Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->b()V

    .line 977
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 979
    :cond_10
    return-void
.end method

.method public g()Ljava/util/ArrayList;
    .registers 4

    .prologue
    .line 1098
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1100
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1101
    :try_start_e
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1102
    monitor-exit v1

    .line 1103
    return-object v0

    .line 1102
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method public h()I
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1172
    .line 1174
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->T:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v2

    move v3, v4

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/b;

    .line 1175
    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    invoke-interface {v0, v6}, Lcom/google/android/maps/driveabout/vector/b;->a(Lcom/google/android/maps/driveabout/vector/k;)I

    move-result v6

    .line 1176
    if-eqz v6, :cond_56

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/b;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v7

    if-eqz v7, :cond_56

    .line 1177
    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/b;->c()Lcom/google/android/maps/driveabout/vector/l;

    move-result-object v0

    .line 1180
    :goto_28
    or-int v1, v3, v6

    move v3, v1

    move-object v1, v0

    .line 1181
    goto :goto_a

    .line 1183
    :cond_2d
    if-eqz v3, :cond_4e

    .line 1185
    if-eqz v1, :cond_40

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->k:Lcom/google/android/maps/driveabout/vector/l;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/l;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 1187
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1188
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->k:Lcom/google/android/maps/driveabout/vector/l;

    .line 1192
    :cond_40
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->u:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v4, v4}, Lcom/google/android/maps/driveabout/vector/I;->a(ZZ)V

    .line 1200
    :goto_45
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->t:Lcom/google/android/maps/driveabout/vector/k;

    if-eqz v3, :cond_4a

    const/4 v4, 0x1

    :cond_4a
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/vector/k;->a(Z)V

    .line 1201
    return v3

    .line 1194
    :cond_4e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/db;->a(Lcom/google/android/maps/driveabout/vector/l;)V

    .line 1195
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cy;->k:Lcom/google/android/maps/driveabout/vector/l;

    goto :goto_45

    :cond_56
    move-object v0, v1

    goto :goto_28
.end method

.method public declared-synchronized i()Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 1541
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->N:Z

    .line 1542
    :goto_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->O:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_15

    if-nez v0, :cond_e

    .line 1544
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_4

    .line 1545
    :catch_c
    move-exception v0

    goto :goto_4

    .line 1549
    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->O:Landroid/graphics/Bitmap;

    .line 1550
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cy;->O:Landroid/graphics/Bitmap;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    .line 1551
    monitor-exit p0

    return-object v0

    .line 1541
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public j()Lcom/google/android/maps/driveabout/vector/D;
    .registers 2

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->S:Lcom/google/android/maps/driveabout/vector/D;

    return-object v0
.end method

.method public k()V
    .registers 2

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->f()V

    .line 1951
    return-void
.end method

.method public l()Lcom/google/android/maps/driveabout/vector/ay;
    .registers 3

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/S;->e()Lcom/google/android/maps/driveabout/vector/d;

    move-result-object v0

    .line 1959
    instance-of v1, v0, Lcom/google/android/maps/driveabout/vector/ay;

    if-eqz v1, :cond_d

    .line 1960
    check-cast v0, Lcom/google/android/maps/driveabout/vector/ay;

    .line 1962
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public m()Lcom/google/android/maps/driveabout/vector/S;
    .registers 2

    .prologue
    .line 1967
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->C:Lcom/google/android/maps/driveabout/vector/S;

    return-object v0
.end method

.method public n()Ly/b;
    .registers 2

    .prologue
    .line 1971
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->D:Ly/b;

    return-object v0
.end method

.method public o()Lcom/google/android/maps/driveabout/vector/db;
    .registers 2

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->aa:Lcom/google/android/maps/driveabout/vector/db;

    return-object v0
.end method

.method public p()Lcom/google/android/maps/driveabout/vector/aU;
    .registers 2

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->m:Lcom/google/android/maps/driveabout/vector/aU;

    return-object v0
.end method

.method public q()V
    .registers 2

    .prologue
    .line 2048
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/cy;->X:Z

    .line 2049
    return-void
.end method
