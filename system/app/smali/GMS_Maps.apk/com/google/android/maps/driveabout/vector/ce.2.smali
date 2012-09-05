.class public Lcom/google/android/maps/driveabout/vector/ce;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/bs;
.implements Lcom/google/android/maps/driveabout/vector/x;


# static fields
.field public static volatile a:Z

.field static final b:Lcom/google/android/maps/driveabout/vector/bX;

.field private static final f:[I

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final l:Ljava/util/Comparator;


# instance fields
.field private final A:Lcom/google/android/maps/driveabout/vector/H;

.field private final B:Lcom/google/android/maps/driveabout/vector/U;

.field private final C:LB/b;

.field private D:LB/c;

.field private final E:Ljava/util/HashSet;

.field private final F:Ljava/util/HashSet;

.field private final G:[I

.field private final H:Ljava/util/List;

.field private I:J

.field private J:Z

.field private final K:Lcom/google/android/maps/driveabout/vector/cK;

.field private L:Ljava/util/List;

.field private M:Z

.field private N:Landroid/graphics/Bitmap;

.field private O:Z

.field private P:F

.field private Q:J

.field private volatile R:Lcom/google/android/maps/driveabout/vector/I;

.field private final S:Ljava/util/List;

.field private T:Lcom/google/android/maps/driveabout/vector/ca;

.field private volatile U:Lcom/google/android/maps/driveabout/vector/ca;

.field private volatile V:Lcom/google/android/maps/driveabout/vector/ca;

.field private volatile W:Z

.field private X:J

.field private Y:I

.field private final Z:Lcom/google/android/maps/driveabout/vector/cI;

.field private aa:Z

.field private volatile ab:F

.field private ac:Lcom/google/android/maps/driveabout/vector/ck;

.field private volatile ad:Z

.field private ae:Z

.field private af:Ljava/lang/Object;

.field private ag:Z

.field private volatile ah:I

.field private ai:Z

.field private aj:I

.field private ak:Z

.field private volatile al:J

.field private am:Ljava/lang/Object;

.field protected c:Ljava/util/Map;

.field protected d:Ljava/util/List;

.field protected e:Z

.field private volatile j:Lcom/google/android/maps/driveabout/vector/bG;

.field private volatile k:Lcom/google/android/maps/driveabout/vector/u;

.field private m:Lcom/google/android/maps/driveabout/vector/aT;

.field private volatile n:I

.field private volatile o:I

.field private final p:Ljava/util/LinkedList;

.field private final q:Ljava/util/ArrayList;

.field private final r:Ljava/util/ArrayList;

.field private final s:Lcom/google/android/maps/driveabout/vector/t;

.field private final t:Lcom/google/android/maps/driveabout/vector/O;

.field private final u:Lcom/google/android/maps/driveabout/vector/bV;

.field private final v:Landroid/content/res/Resources;

.field private final w:F

.field private x:Lcom/google/android/maps/driveabout/vector/bI;

.field private final y:Lcom/google/android/maps/driveabout/vector/bE;

.field private final z:Lcom/google/android/maps/driveabout/vector/bE;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/maps/driveabout/vector/ce;->a:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ce;->f:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ce;->g:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ce;->h:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ce;->i:[I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bX;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/bX;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ce;->b:Lcom/google/android/maps/driveabout/vector/bX;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cf;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/cf;-><init>()V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ce;->l:Ljava/util/Comparator;

    return-void

    nop

    :array_30
    .array-data 0x4
        0x0t 0xedt 0x0t 0x0t
        0x0t 0xeat 0x0t 0x0t
        0x0t 0xe2t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_3c
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_48
    .array-data 0x4
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x80t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data

    :array_54
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/O;Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->o:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->E:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->F:Ljava/util/HashSet;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->G:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->H:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->I:J

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cg;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/cg;-><init>(Lcom/google/android/maps/driveabout/vector/ce;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->K:Lcom/google/android/maps/driveabout/vector/cK;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->S:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->af:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->ag:Z

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->ah:I

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->ai:Z

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->aj:I

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->c:Ljava/util/Map;

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->al:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->am:Ljava/lang/Object;

    new-instance v0, Lag/a;

    invoke-direct {v0}, Lag/a;-><init>()V

    invoke-static {v0}, Lp/a;->a(Laf/a;)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/bG;->q:Lcom/google/android/maps/driveabout/vector/bG;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->j:Lcom/google/android/maps/driveabout/vector/bG;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->a:Lcom/google/android/maps/driveabout/vector/I;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->R:Lcom/google/android/maps/driveabout/vector/I;

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bV;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/vector/bV;-><init>(Lcom/google/android/maps/driveabout/vector/ce;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->u:Lcom/google/android/maps/driveabout/vector/bV;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ce;->v:Landroid/content/res/Resources;

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->w:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->w:F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/az;->a(F)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->w:F

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/ap;->a(F)V

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->q:Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/maps/driveabout/vector/cU;->a:Lcom/google/android/maps/driveabout/vector/cU;

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cU;Landroid/content/res/Resources;)Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->r:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, p2}, Lcom/google/android/maps/driveabout/vector/U;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bE;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bE;-><init>(ILcom/google/android/maps/driveabout/vector/U;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->y:Lcom/google/android/maps/driveabout/vector/bE;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bE;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/bE;-><init>(ILcom/google/android/maps/driveabout/vector/U;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->z:Lcom/google/android/maps/driveabout/vector/bE;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/H;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/H;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->A:Lcom/google/android/maps/driveabout/vector/H;

    new-instance v0, LB/b;

    invoke-direct {v0}, LB/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->C:LB/b;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->y:Lcom/google/android/maps/driveabout/vector/bE;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->C:LB/b;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->A:Lcom/google/android/maps/driveabout/vector/H;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aS;

    const v1, 0x1d4c0

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/aS;-><init>(I)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/I;->c:Lcom/google/android/maps/driveabout/vector/I;

    const/high16 v2, -0x8000

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/aS;->a(Lcom/google/android/maps/driveabout/vector/I;I)V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aR;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/aR;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cS;->a()Z

    move-result v0

    if-eqz v0, :cond_133

    new-instance v0, LB/c;

    invoke-direct {v0, p2}, LB/c;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->C:LB/b;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    invoke-virtual {v0, v1}, LB/b;->a(LB/a;)V

    :goto_120
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->K:Lcom/google/android/maps/driveabout/vector/cK;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cK;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cI;->b(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Q:J

    return-void

    :cond_133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    goto :goto_120
.end method

.method static a(IIF)F
    .registers 5

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4380

    mul-float/2addr v1, p2

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    const/high16 v1, 0x3f80

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/t;->a(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/ce;)LB/c;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/aT;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    const/4 v0, 0x0

    :try_start_1d
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ai:Z

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_19

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v1

    if-lez v0, :cond_2b

    if-lez v1, :cond_2b

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v2, v2, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0x1701

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-interface {v2, v4, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->t()[F

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    const/16 v3, 0xc11

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    invoke-interface {v2, v4, v4, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    :cond_2b
    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/t;IZZ)V
    .registers 16

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->t()Lcom/google/android/maps/driveabout/vector/ci;

    move-result-object v8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->A()V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->R:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->g()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->P:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1e

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/t;)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->g()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->P:F

    :cond_1e
    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/ce;->b(Lcom/google/android/maps/driveabout/vector/t;)V

    const/4 v0, 0x0

    :goto_22
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->a()[Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_35

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->a()[Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p2}, Lcom/google/android/maps/driveabout/vector/aE;->c(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_35
    if-eqz p3, :cond_99

    const/4 v0, 0x0

    :goto_38
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->a()[Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4b

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->a()[Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v1

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/aE;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_38

    :cond_4b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/ce;->a:Z

    if-eqz v0, :cond_92

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->b()[Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_5b
    if-ge v3, v5, :cond_92

    aget-object v0, v4, v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_67
    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aU;

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/aU;->e()Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v1

    if-nez v1, :cond_82

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/aU;Lcom/google/android/maps/driveabout/vector/t;)Lcom/google/android/maps/driveabout/vector/af;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/maps/driveabout/vector/aU;->a(Lcom/google/android/maps/driveabout/vector/af;)V

    :cond_82
    move-object v0, v1

    if-eqz v0, :cond_67

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/af;->a_(Lcom/google/android/maps/driveabout/vector/t;)Z

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->H:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_67

    :cond_8e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5b

    :cond_92
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->A:Lcom/google/android/maps/driveabout/vector/H;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->H:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/H;->a(Ljava/util/List;)V

    :cond_99
    if-eqz p4, :cond_aa

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->f:Lcom/google/android/maps/driveabout/vector/I;

    if-eq v2, v0, :cond_aa

    sget-object v0, Lcom/google/android/maps/driveabout/vector/I;->e:Lcom/google/android/maps/driveabout/vector/I;

    if-eq v2, v0, :cond_aa

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->b()[Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/t;IZ[Lcom/google/android/maps/driveabout/vector/cI;)V

    :cond_aa
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    if-eqz v0, :cond_100

    monitor-enter p0

    :try_start_af
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->J:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->J:Z

    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_f2

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->E:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->F:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->G:[I

    const/4 v1, 0x0

    const/4 v3, -0x1

    aput v3, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->G:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->b()[Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v9

    array-length v10, v9

    const/4 v0, 0x0

    move v7, v0

    :goto_d3
    if-ge v7, v10, :cond_f5

    aget-object v0, v9, v7

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->E:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->F:Ljava/util/HashSet;

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ce;->G:[I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/I;Ljava/util/HashSet;Ljava/util/HashSet;[I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->G:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le v0, v6, :cond_20c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->G:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_ed
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    move v6, v0

    goto :goto_d3

    :catchall_f2
    move-exception v0

    :try_start_f3
    monitor-exit p0
    :try_end_f4
    .catchall {:try_start_f3 .. :try_end_f4} :catchall_f2

    throw v0

    :cond_f5
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->E:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->F:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->R:Lcom/google/android/maps/driveabout/vector/I;

    invoke-virtual {v0, v1, v3, v6, v4}, LB/c;->a(Ljava/util/HashSet;Ljava/util/HashSet;ILcom/google/android/maps/driveabout/vector/I;)V

    :cond_100
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->l()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->q()V

    if-nez p3, :cond_10e

    if-eqz p2, :cond_16a

    :cond_10e
    const/4 v0, 0x1

    :goto_10f
    invoke-virtual {p0, v8, v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/ci;Z)V

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cl;

    const/4 v0, 0x0

    invoke-direct {v3, v2, v0}, Lcom/google/android/maps/driveabout/vector/cl;-><init>(Lcom/google/android/maps/driveabout/vector/I;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ak:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_121
    :goto_121
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/cl;->a(Lcom/google/android/maps/driveabout/vector/cb;)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a()Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v0, :cond_13d

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ca;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    :cond_13d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->y()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v1, v0, p1, v3}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/t;Lcom/google/android/maps/driveabout/vector/J;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->z()V

    instance-of v0, v1, Lcom/google/android/maps/driveabout/vector/cI;

    if-eqz v0, :cond_160

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ak:Z

    if-eqz v0, :cond_16c

    move-object v0, v1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->n()Z

    move-result v0

    if-eqz v0, :cond_16c

    const/4 v0, 0x1

    :goto_15e
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ak:Z

    :cond_160
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ca;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_121

    :cond_16a
    const/4 v0, 0x0

    goto :goto_10f

    :cond_16c
    const/4 v0, 0x0

    goto :goto_15e

    :cond_16e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->A()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    if-eqz v0, :cond_1f0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x505

    if-ne v0, v2, :cond_1aa

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->X:J

    sub-long/2addr v2, v4

    const-string v4, "\nTime in current GL context: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lp/a;->a()Lp/a;

    move-result-object v2

    invoke-virtual {v2}, Lp/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->W:Z

    :cond_1aa
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

    invoke-static {v2, v3}, Ln/b;->e(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v2, v1}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f0
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->W:Z

    if-eqz v1, :cond_1f4

    :cond_1f4
    const/16 v1, 0x505

    if-ne v0, v1, :cond_208

    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/vector/ci;->a()[Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1fe
    if-ge v0, v2, :cond_208

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aE;->b()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1fe

    :cond_208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->W:Z

    return-void

    :cond_20c
    move v0, v6

    goto/16 :goto_ed
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/t;IZ[Lcom/google/android/maps/driveabout/vector/cI;)V
    .registers 16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    if-nez p3, :cond_2d

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {v1, v2, v0}, Lcom/google/android/maps/driveabout/vector/ca;->a(Lcom/google/android/maps/driveabout/vector/bI;Z)V

    :cond_e
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_13
    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->v()Lt/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lt/av;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->O:Z

    :goto_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/ca;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    :cond_2c
    return-void

    :cond_2d
    const/4 v0, 0x0

    goto :goto_b

    :cond_2f
    const/4 v0, 0x0

    goto :goto_13

    :cond_31
    if-nez p3, :cond_3f

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->O:Z

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(I)V

    goto :goto_21

    :cond_3f
    new-instance v5, Lcom/google/android/maps/driveabout/vector/bZ;

    invoke-direct {v5}, Lcom/google/android/maps/driveabout/vector/bZ;-><init>()V

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->v()Lt/at;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7b

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->i()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7b

    const/4 v0, 0x1

    :goto_60
    if-eqz v0, :cond_7d

    const/4 v0, 0x0

    :goto_63
    const/4 v3, 0x0

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v7

    invoke-static {}, LK/cb;->a()Ljava/util/HashMap;

    move-result-object v8

    array-length v4, p4

    const/4 v1, 0x0

    :goto_6e
    if-ge v1, v4, :cond_8b

    aget-object v9, p4, v1

    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/vector/cI;->h()Z

    move-result v10

    if-nez v10, :cond_7f

    :goto_78
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_7b
    const/4 v0, 0x0

    goto :goto_60

    :cond_7d
    move-object v0, v2

    goto :goto_63

    :cond_7f
    invoke-virtual {v9, v0, v5, v6}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lt/at;Lcom/google/android/maps/driveabout/vector/bZ;Ljava/util/Set;)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v9, v7, v8}, Lcom/google/android/maps/driveabout/vector/cI;->a(Ljava/util/Set;Ljava/util/Map;)V

    goto :goto_78

    :cond_8b
    monitor-enter p0

    :try_start_8c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->L:Ljava/util/List;

    if-eqz v0, :cond_a4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_96
    monitor-exit p0
    :try_end_97
    .catchall {:try_start_8c .. :try_end_97} :catchall_a6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    const/16 v9, 0x14

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/t;Lt/av;ILjava/util/Iterator;Lcom/google/android/maps/driveabout/vector/bZ;Ljava/util/Set;Ljava/util/Set;Ljava/util/Map;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->O:Z

    goto/16 :goto_21

    :cond_a4
    const/4 v4, 0x0

    goto :goto_96

    :catchall_a6
    move-exception v0

    :try_start_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v0
.end method

.method static synthetic a(Lcom/google/android/maps/driveabout/vector/ce;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->J:Z

    return p1
.end method

.method public static a(Lcom/google/android/maps/driveabout/vector/I;)[I
    .registers 3

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ch;->a:[I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/I;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1e

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->i:[I

    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->f:[I

    goto :goto_d

    :pswitch_11
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->f:[I

    goto :goto_d

    :pswitch_14
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->f:[I

    goto :goto_d

    :pswitch_17
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->g:[I

    goto :goto_d

    :pswitch_1a
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ce;->h:[I

    goto :goto_d

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

.method private b(Lcom/google/android/maps/driveabout/vector/t;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/t;->s()[F

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-static {p1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/I;)[I

    move-result-object v0

    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v0, v0, v5

    invoke-interface {v1, v2, v3, v4, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    const/16 v0, 0x4000

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aT;->g()Z

    move-result v2

    if-eqz v2, :cond_28

    const/16 v0, 0x4100

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aT;->h()V

    :cond_28
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aT;->i()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    or-int/lit16 v0, v0, 0x400

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aT;->j()V

    :cond_3a
    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    return-void
.end method

.method private c(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 7

    invoke-static {}, Ln/a;->b()Z

    move-result v0

    if-nez v0, :cond_5a

    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/cI;

    if-eqz v0, :cond_5a

    move-object v0, p1

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/driveabout/vector/aE;

    instance-of v3, v1, Lcom/google/android/maps/driveabout/vector/cI;

    if-eqz v3, :cond_13

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cI;->p()Lp/e;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->p()Lp/e;

    move-result-object v4

    if-ne v3, v4, :cond_13

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The added tile Overlay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->l()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " shares the same GLTileCache with "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cI;->l()Lcom/google/android/maps/driveabout/vector/cU;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(I)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->c()Z

    move-result v0

    if-eqz v0, :cond_c6

    :cond_e
    move v0, v2

    :goto_f
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v3, v3, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/vector/O;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->h()Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/t;->a()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/maps/driveabout/vector/ce;->I:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_36

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->a()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->I:J

    move v0, v2

    :cond_36
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->u()V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->U:Lcom/google/android/maps/driveabout/vector/ca;

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v3, :cond_4b

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {v3, p0}, Lcom/google/android/maps/driveabout/vector/ca;->a(Lcom/google/android/maps/driveabout/vector/ce;)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ca;->a()V

    :cond_4b
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->V:Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v3, :cond_54

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->V:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/ca;->a()V

    :cond_54
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/t;->h()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6a

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-direct {p0, v3, p1, v0, v2}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/t;IZZ)V

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aT;->f()V

    :cond_6a
    iget-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->ak:Z

    if-eqz v3, :cond_c9

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bI;->c()Z

    move-result v3

    if-nez v3, :cond_c9

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/aT;->c()Z

    move-result v3

    if-nez v3, :cond_c9

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/O;->i()Z

    move-result v3

    if-nez v3, :cond_c9

    :goto_86
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    if-eqz v3, :cond_9c

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {v3, v2}, Lcom/google/android/maps/driveabout/vector/ca;->b(Z)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->T:Lcom/google/android/maps/driveabout/vector/ca;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/ca;->b()Z

    move-result v2

    if-eqz v2, :cond_9c

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v2, v1, v1}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    :cond_9c
    monitor-enter p0

    :try_start_9d
    iget-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->M:Z

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_cb

    if-eqz v2, :cond_b0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->s()Landroid/graphics/Bitmap;

    move-result-object v2

    monitor-enter p0

    :try_start_a7
    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->N:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->M:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_b0
    .catchall {:try_start_a7 .. :try_end_b0} :catchall_ce

    :cond_b0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->c()Z

    move-result v2

    if-nez v2, :cond_c0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aT;->c()Z

    move-result v2

    if-eqz v2, :cond_d1

    :cond_c0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    :cond_c5
    :goto_c5
    return-void

    :cond_c6
    move v0, v1

    goto/16 :goto_f

    :cond_c9
    move v2, v1

    goto :goto_86

    :catchall_cb
    move-exception v0

    :try_start_cc
    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_cc .. :try_end_cd} :catchall_cb

    throw v0

    :catchall_ce
    move-exception v0

    :try_start_cf
    monitor-exit p0
    :try_end_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_ce

    throw v0

    :cond_d1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_ee

    if-nez v0, :cond_ee

    if-nez p1, :cond_ee

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->Q:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_ee

    invoke-static {}, Ljava/lang/System;->gc()V

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->Q:J

    :cond_ee
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->b()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_c5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    goto :goto_c5
.end method

.method private q()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a()V

    :cond_9
    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cy;->a()V

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/A;->c()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->A()V

    :cond_18
    return-void
.end method

.method private r()V
    .registers 5

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->n:I

    if-gez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->aa:Z

    if-eqz v0, :cond_2b

    const/16 v0, 0xa

    :goto_b
    :try_start_b
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->n:I

    invoke-static {v1, v0}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_4

    :catch_11
    move-exception v0

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

    invoke-static {v1, v0}, Ln/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_2b
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->o:I

    goto :goto_b
.end method

.method private s()Landroid/graphics/Bitmap;
    .registers 15

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/t;->d()I

    move-result v3

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/t;->e()I

    move-result v4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->u:Lcom/google/android/maps/driveabout/vector/bV;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/android/maps/driveabout/vector/bV;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-static {v13}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v5

    invoke-static {v13}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v6

    mul-int v2, v3, v4

    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v7

    move v2, v1

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

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

    return-object v13
.end method

.method private t()Lcom/google/android/maps/driveabout/vector/ci;
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v7, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    monitor-enter v7

    :try_start_6
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ai:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v4, v6}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V

    goto :goto_10

    :catchall_24
    move-exception v0

    monitor-exit v7
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_24

    throw v0

    :cond_27
    const/4 v0, 0x1

    :try_start_28
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ai:Z

    :cond_2a
    move v6, v1

    move v2, v1

    move v4, v1

    :goto_2d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_d6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cj;

    iget-boolean v1, v0, Lcom/google/android/maps/driveabout/vector/cj;->b:Z

    if-eqz v1, :cond_98

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_131

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/cI;

    if-eqz v1, :cond_96

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    check-cast v1, Lcom/google/android/maps/driveabout/vector/cI;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->K:Lcom/google/android/maps/driveabout/vector/cK;

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/cK;)V

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/cI;->s_()I

    move-result v4

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/ce;->aj:I

    if-ge v4, v8, :cond_92

    move v1, v3

    :goto_71
    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-direct {p0, v2}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/aE;)V

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/aE;->x()Lcom/google/android/maps/driveabout/vector/b;

    move-result-object v2

    if-eqz v2, :cond_81

    invoke-virtual {p0, v2}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/b;)V

    :cond_81
    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v2, v4}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aT;Lcom/google/android/maps/driveabout/vector/cm;)V

    move v0, v1

    move v1, v3

    :goto_8c
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v4, v1

    move v2, v0

    goto :goto_2d

    :cond_92
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/google/android/maps/driveabout/vector/cI;->b(Z)V

    :cond_96
    move v1, v2

    goto :goto_71

    :cond_98
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_131

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    instance-of v1, v1, Lcom/google/android/maps/driveabout/vector/cI;

    if-eqz v1, :cond_12f

    iget-object v1, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/aE;->s_()I

    move-result v1

    iget v8, p0, Lcom/google/android/maps/driveabout/vector/ce;->aj:I

    if-ne v1, v8, :cond_12d

    move v1, v3

    :goto_b3
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->r:Ljava/util/ArrayList;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_ba
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->c:Ljava/util/Map;

    iget-object v8, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-interface {v2, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    iget-object v8, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v2, v8}, Lcom/google/android/maps/driveabout/vector/aE;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aE;->x()Lcom/google/android/maps/driveabout/vector/b;

    move-result-object v0

    if-eqz v0, :cond_d3

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->b(Lcom/google/android/maps/driveabout/vector/b;)V

    :cond_d3
    move v0, v1

    move v1, v4

    goto :goto_8c

    :cond_d6
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v2, :cond_10f

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->aj:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v5

    :goto_e9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_109

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cI;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/cI;->b(Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->s_()I

    move-result v5

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ce;->aj:I

    if-ge v5, v6, :cond_12b

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cI;->s_()I

    move-result v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->aj:I

    :goto_107
    move-object v1, v0

    goto :goto_e9

    :cond_109
    if-eqz v1, :cond_10f

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/cI;->b(Z)V

    :cond_10f
    if-eqz v4, :cond_120

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, v3, :cond_120

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ce;->l:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_120
    new-instance v0, Lcom/google/android/maps/driveabout/vector/ci;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->r:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/ci;-><init>(Ljava/util/List;Ljava/util/List;)V

    monitor-exit v7
    :try_end_12a
    .catchall {:try_start_28 .. :try_end_12a} :catchall_24

    return-object v0

    :cond_12b
    move-object v0, v1

    goto :goto_107

    :cond_12d
    move v1, v2

    goto :goto_b3

    :cond_12f
    move v1, v2

    goto :goto_ba

    :cond_131
    move v0, v2

    move v1, v4

    goto/16 :goto_8c
.end method

.method private u()V
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->Y:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->Y:I

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_2a

    if-eqz v1, :cond_2f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2d

    const/4 v0, 0x1

    move v1, v0

    :goto_f
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aE;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aE;->a(Z)V

    goto :goto_1a

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    move v1, v0

    goto :goto_f

    :cond_2f
    return-void
.end method


# virtual methods
.method public a()F
    .registers 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ab:F

    return v0
.end method

.method public a(Lt/L;)F
    .registers 6

    const/high16 v0, 0x41a8

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_5
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/cI;->b(Lt/L;)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    move v1, v0

    goto :goto_c

    :cond_22
    monitor-exit v2

    return v1

    :catchall_24
    move-exception v0

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_24

    throw v0
.end method

.method public a(Landroid/content/Context;Z)Lcom/google/android/maps/driveabout/vector/bR;
    .registers 5

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bR;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, p1, v1, p2}, Lcom/google/android/maps/driveabout/vector/bR;-><init>(Landroid/content/Context;Lcom/google/android/maps/driveabout/vector/U;Z)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->o:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->r()V

    return-void
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->D:LB/c;

    invoke-virtual {v0, p1, p2}, LB/c;->a(II)V

    :cond_9
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/V;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/U;->a(Lcom/google/android/maps/driveabout/vector/V;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 6

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_4
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cj;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/cj;-><init>(Lcom/google/android/maps/driveabout/vector/cf;)V

    iput-object p1, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/maps/driveabout/vector/cj;->b:Z

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1c

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    return-void

    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bG;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->j:Lcom/google/android/maps/driveabout/vector/bG;

    if-eq p1, v0, :cond_16

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->j:Lcom/google/android/maps/driveabout/vector/bG;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->a(Lcom/google/android/maps/driveabout/vector/bG;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    :cond_16
    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/ca;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->U:Lcom/google/android/maps/driveabout/vector/ca;

    return-void
.end method

.method a(Lcom/google/android/maps/driveabout/vector/ci;Z)V
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    monitor-enter v5

    :try_start_5
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:Z

    if-nez v0, :cond_d

    if-nez p2, :cond_d

    monitor-exit v5

    :goto_c
    return-void

    :cond_d
    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->e:Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ci;->a()[Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v6

    array-length v7, v6

    move v4, v2

    :goto_18
    if-ge v4, v7, :cond_39

    aget-object v8, v6, v4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->c:Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_30

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->c:Ljava/util/Map;

    invoke-interface {v1, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v3

    :cond_30
    invoke-virtual {v8, v0}, Lcom/google/android/maps/driveabout/vector/aE;->b(Ljava/util/List;)Z

    move-result v0

    or-int/2addr v1, v0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_18

    :cond_39
    if-eqz v1, :cond_61

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/ci;->a()[Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v3

    array-length v4, v3

    :goto_45
    if-ge v2, v4, :cond_5c

    aget-object v0, v3, v2

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ce;->c:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_58

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_58
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_45

    :cond_5c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_61
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ac:Lcom/google/android/maps/driveabout/vector/ck;

    if-eqz v0, :cond_db

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ac:Lcom/google/android/maps/driveabout/vector/ck;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    invoke-interface {v0, v2, v1}, Lcom/google/android/maps/driveabout/vector/ck;->a(Ljava/util/List;Z)Z

    move-result v0

    or-int/2addr v0, v1

    :goto_6e
    if-eqz v0, :cond_d8

    invoke-static {}, LK/cw;->a()Ljava/util/HashSet;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a()Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9f

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cb;->a(Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a()Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    :catchall_9c
    move-exception v0

    monitor-exit v5
    :try_end_9e
    .catchall {:try_start_5 .. :try_end_9e} :catchall_9c

    throw v0

    :cond_9f
    const/4 v3, 0x0

    :try_start_a0
    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cb;->a(Z)V

    goto :goto_7a

    :cond_a4
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->d:Ljava/util/List;

    invoke-static {v0}, LK/bR;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/cb;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a()Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d3

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cb;->b(Z)V

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/cb;->a()Lcom/google/android/maps/driveabout/vector/aE;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b1

    :cond_d3
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/cb;->b(Z)V

    goto :goto_b1

    :cond_d8
    monitor-exit v5
    :try_end_d9
    .catchall {:try_start_a0 .. :try_end_d9} :catchall_9c

    goto/16 :goto_c

    :cond_db
    move v0, v1

    goto :goto_6e
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->ac:Lcom/google/android/maps/driveabout/vector/ck;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/maps/driveabout/vector/U;->a(Lcom/google/android/maps/driveabout/vector/m;Lcom/google/android/maps/driveabout/vector/p;)V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/o;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->y:Lcom/google/android/maps/driveabout/vector/bE;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/o;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 3

    if-eqz p1, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_7
    monitor-enter p0

    :try_start_8
    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->L:Ljava/util/List;

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_1e

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_21

    :cond_13
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->z:Lcom/google/android/maps/driveabout/vector/bE;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->b(Lcom/google/android/maps/driveabout/vector/aE;)V

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ce;->e()V

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_7

    :catchall_1e
    move-exception v0

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->z:Lcom/google/android/maps/driveabout/vector/bE;

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/aE;)V

    goto :goto_18
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 9

    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_1b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GL object has changed since onSurfaceCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "DA:Renderer"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "OpenGL error during initialization."

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1b
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->L()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/aT;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->R:Lcom/google/android/maps/driveabout/vector/I;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->c(Lcom/google/android/maps/driveabout/vector/I;)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ah:I

    if-lez v0, :cond_3d

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ah:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ah:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v2, v2}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    :goto_3c
    return-void

    :cond_3d
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ad:Z

    if-eqz v0, :cond_59

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->af:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_45
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ad:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->af:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    :goto_4c
    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ae:Z
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_82

    if-nez v0, :cond_58

    :try_start_50
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->af:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_55
    .catchall {:try_start_50 .. :try_end_55} :catchall_82
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_55} :catch_56

    goto :goto_4c

    :catch_56
    move-exception v0

    goto :goto_4c

    :cond_58
    :try_start_58
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_82

    :cond_59
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->al:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_76

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->am:Ljava/lang/Object;

    monitor-enter v1

    :try_start_62
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->al:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_70

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->al:J

    :cond_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_62 .. :try_end_71} :catchall_85

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->e()V

    :cond_76
    invoke-static {}, Lz/n;->d()Z

    move-result v0

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v6, v6}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    goto :goto_3c

    :catchall_82
    move-exception v0

    :try_start_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v0

    :catchall_85
    move-exception v0

    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw v0

    :cond_88
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ce;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->d(I)V

    goto :goto_3c
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GL object has changed since onSurfaceCreated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "DA:Renderer"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, "OpenGL error during initialization."

    invoke-static {v1, v0}, Ln/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    if-lez p2, :cond_1b

    if-gtz p3, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->w:F

    invoke-virtual {v0, p2, p3, v1}, Lcom/google/android/maps/driveabout/vector/t;->a(IIF)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/t;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/t;->g()F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->P:F

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->w:F

    invoke-static {p2, p3, v0}, Lcom/google/android/maps/driveabout/vector/ce;->a(IIF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ab:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    goto :goto_1b
.end method

.method public a(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 7

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->n:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->r()V

    const/16 v0, 0x1f01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/android/I;->a(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/ce;->a(Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->a:Ljavax/microedition/khronos/opengles/GL10;

    if-eq v0, p1, :cond_26

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->q()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    :cond_26
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    if-nez v0, :cond_6d

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->X:J

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->u:Lcom/google/android/maps/driveabout/vector/bV;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/maps/driveabout/vector/aT;-><init>(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bV;Lcom/google/android/maps/driveabout/vector/O;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    iget-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->aa:Z

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/O;->b(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->v:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/cy;->a(Landroid/content/res/Resources;Lcom/google/android/maps/driveabout/vector/aT;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/aT;->C()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/az;->a(I)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->j:Lcom/google/android/maps/driveabout/vector/bG;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(Lcom/google/android/maps/driveabout/vector/bG;Lcom/google/android/maps/driveabout/vector/aT;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->y:Lcom/google/android/maps/driveabout/vector/bE;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->z:Lcom/google/android/maps/driveabout/vector/bE;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bE;->a(Lcom/google/android/maps/driveabout/vector/bI;)V

    :cond_6d
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/vector/O;->c(Z)V

    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->O:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ag:Z

    if-eqz v0, :cond_7b

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->ah:I

    :cond_7b
    iput-boolean v3, p0, Lcom/google/android/maps/driveabout/vector/ce;->ag:Z

    return-void
.end method

.method declared-synchronized a(Z)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->aa:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/O;->b(Z)V

    if-nez p1, :cond_17

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->m:Lcom/google/android/maps/driveabout/vector/aT;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/aT;->b:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->c()V

    :cond_17
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->r()V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(I)Lcom/google/android/maps/driveabout/vector/aD;
    .registers 4

    new-instance v0, Lcom/google/android/maps/driveabout/vector/aD;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-direct {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/aD;-><init>(ILcom/google/android/maps/driveabout/vector/U;)V

    return-object v0
.end method

.method public b()V
    .registers 7

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->am:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->al:J

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/O;->e()V

    return-void

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/I;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->R:Lcom/google/android/maps/driveabout/vector/I;

    if-eq p1, v0, :cond_e

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ce;->R:Lcom/google/android/maps/driveabout/vector/I;

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->J:Z

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_f

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ce;->e()V

    :cond_e
    return-void

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/aE;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_3
    new-instance v0, Lcom/google/android/maps/driveabout/vector/cj;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/cj;-><init>(Lcom/google/android/maps/driveabout/vector/cf;)V

    iput-object p1, v0, Lcom/google/android/maps/driveabout/vector/cj;->a:Lcom/google/android/maps/driveabout/vector/aE;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->q:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    return-void

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/b;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Z)V
    .registers 4

    const/4 v1, 0x0

    monitor-enter p0

    if-eqz p1, :cond_e

    const/4 v0, 0x2

    :goto_5
    :try_start_5
    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Y:I

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v1, v1}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    return-void

    :cond_e
    const/4 v0, 0x1

    goto :goto_5

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

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->am:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-wide v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->al:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->al:J

    :cond_14
    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->y:Lcom/google/android/maps/driveabout/vector/bE;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bE;->a(I)V

    return-void
.end method

.method public declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/O;->c(Z)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->x:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    :cond_10
    return-void
.end method

.method public f()Ljava/util/ArrayList;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_e
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method

.method public g()I
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->S:Ljava/util/List;

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

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/ce;->s:Lcom/google/android/maps/driveabout/vector/t;

    invoke-interface {v0, v6}, Lcom/google/android/maps/driveabout/vector/b;->a(Lcom/google/android/maps/driveabout/vector/t;)I

    move-result v6

    if-eqz v6, :cond_4e

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/b;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v7

    if-eqz v7, :cond_4e

    invoke-interface {v0}, Lcom/google/android/maps/driveabout/vector/b;->c()Lcom/google/android/maps/driveabout/vector/u;

    move-result-object v0

    :goto_28
    or-int v1, v3, v6

    move v3, v1

    move-object v1, v0

    goto :goto_a

    :cond_2d
    if-eqz v3, :cond_46

    if-eqz v1, :cond_40

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->k:Lcom/google/android/maps/driveabout/vector/u;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/u;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->k:Lcom/google/android/maps/driveabout/vector/u;

    :cond_40
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->t:Lcom/google/android/maps/driveabout/vector/O;

    invoke-virtual {v0, v4, v4}, Lcom/google/android/maps/driveabout/vector/O;->a(ZZ)V

    :goto_45
    return v3

    :cond_46
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/vector/cI;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/ce;->k:Lcom/google/android/maps/driveabout/vector/u;

    goto :goto_45

    :cond_4e
    move-object v0, v1

    goto :goto_28
.end method

.method public declared-synchronized h()Landroid/graphics/Bitmap;
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->M:Z

    :goto_4
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->N:Landroid/graphics/Bitmap;
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_15

    if-nez v0, :cond_e

    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_15
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_4

    :catch_c
    move-exception v0

    goto :goto_4

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->N:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ce;->N:Landroid/graphics/Bitmap;
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    monitor-exit p0

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Lcom/google/android/maps/driveabout/vector/I;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->R:Lcom/google/android/maps/driveabout/vector/I;

    return-object v0
.end method

.method public j()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/U;->f()V

    return-void
.end method

.method public k()Lcom/google/android/maps/driveabout/vector/aA;
    .registers 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/U;->e()Lcom/google/android/maps/driveabout/vector/m;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/maps/driveabout/vector/aA;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/maps/driveabout/vector/aA;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public l()Lcom/google/android/maps/driveabout/vector/U;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->B:Lcom/google/android/maps/driveabout/vector/U;

    return-object v0
.end method

.method public m()LB/b;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->C:LB/b;

    return-object v0
.end method

.method public n()Lcom/google/android/maps/driveabout/vector/cI;
    .registers 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->Z:Lcom/google/android/maps/driveabout/vector/cI;

    return-object v0
.end method

.method public o()[Lcom/google/android/maps/driveabout/vector/cI;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ce;->t()Lcom/google/android/maps/driveabout/vector/ci;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/ci;->b()[Lcom/google/android/maps/driveabout/vector/cI;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ce;->W:Z

    return-void
.end method
