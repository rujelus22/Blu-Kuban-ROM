.class public LaY/Y;
.super Ljava/lang/Object;

# interfaces
.implements LaP/i;
.implements Lar/m;
.implements Lcom/google/googlenav/layer/l;


# static fields
.field private static final J:I

.field private static final K:I

.field private static final L:I

.field private static final R:I

.field public static a:I

.field public static b:I

.field protected static final k:I

.field private static final t:[I

.field private static final u:[Z

.field private static v:Z

.field private static volatile w:I


# instance fields
.field private A:Z

.field private B:I

.field private C:Ljava/lang/Object;

.field private D:Ljava/lang/String;

.field private final E:Landroid/graphics/Point;

.field private final F:Lcom/google/googlenav/layer/r;

.field private final G:LaY/a;

.field private final H:LaX/a;

.field private final I:Ljava/util/Map;

.field private M:Ljava/util/Vector;

.field private N:Z

.field private O:LaJ/B;

.field private P:I

.field private Q:Z

.field private S:LaY/ac;

.field protected final c:Lcom/google/googlenav/ui/D;

.field protected final d:LaE/h;

.field protected final e:LaJ/p;

.field protected final f:LaJ/u;

.field protected final g:Lcom/google/googlenav/ui/af;

.field protected final h:LaJ/k;

.field protected final i:Lcom/google/googlenav/ui/at;

.field protected final j:Ljava/util/Vector;

.field private final l:Lax/bD;

.field private final m:Lax/r;

.field private final n:Lcom/google/googlenav/android/ac;

.field private final o:Lcom/google/googlenav/ui/wizard/hM;

.field private final p:Ljava/util/Vector;

.field private final q:Ljava/util/Vector;

.field private final r:Ljava/util/Vector;

.field private s:Z

.field private x:B

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v2, 0x5

    sput v2, LaY/Y;->a:I

    const/16 v0, 0x14

    sput v0, LaY/Y;->b:I

    new-array v0, v2, [I

    fill-array-data v0, :array_4a

    sput-object v0, LaY/Y;->t:[I

    new-array v0, v2, [Z

    fill-array-data v0, :array_58

    sput-object v0, LaY/Y;->u:[Z

    sput-boolean v1, LaY/Y;->v:Z

    sput v1, LaY/Y;->w:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Laf/b;->c(I)I

    move-result v0

    sput v0, LaY/Y;->J:I

    sget v0, LaY/Y;->J:I

    sget v1, LaY/Y;->J:I

    mul-int/2addr v0, v1

    sput v0, LaY/Y;->K:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Laf/b;->c(I)I

    move-result v0

    sput v0, LaY/Y;->L:I

    sget v0, LaY/Y;->L:I

    sget v1, LaY/Y;->L:I

    mul-int/2addr v0, v1

    sput v0, LaY/Y;->k:I

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Laf/b;->c(I)I

    move-result v0

    sput v0, LaY/Y;->R:I

    return-void

    nop

    :array_4a
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_58
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lax/bD;Lax/r;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/ui/wizard/hM;LaJ/k;Lcom/google/googlenav/layer/r;)V
    .registers 16

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaY/Y;->p:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaY/Y;->r:Ljava/util/Vector;

    iput-boolean v1, p0, LaY/Y;->s:Z

    iput-byte v2, p0, LaY/Y;->x:B

    const/16 v0, -0xa

    iput v0, p0, LaY/Y;->y:I

    iput-boolean v1, p0, LaY/Y;->z:Z

    iput-boolean v1, p0, LaY/Y;->A:Z

    iput v2, p0, LaY/Y;->B:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, LaY/Y;->E:Landroid/graphics/Point;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, LaY/Y;->I:Ljava/util/Map;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    iput-boolean v1, p0, LaY/Y;->N:Z

    iput v2, p0, LaY/Y;->P:I

    iput-object p1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iput-object p2, p0, LaY/Y;->e:LaJ/p;

    iput-object p3, p0, LaY/Y;->f:LaJ/u;

    iput-object p4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iput-object p5, p0, LaY/Y;->d:LaE/h;

    iput-object p6, p0, LaY/Y;->l:Lax/bD;

    iput-object p7, p0, LaY/Y;->m:Lax/r;

    iput-object p8, p0, LaY/Y;->n:Lcom/google/googlenav/android/ac;

    iput-object p9, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    iput-object p10, p0, LaY/Y;->o:Lcom/google/googlenav/ui/wizard/hM;

    iput-object p11, p0, LaY/Y;->h:LaJ/k;

    iput-object p12, p0, LaY/Y;->F:Lcom/google/googlenav/layer/r;

    new-instance v0, LaY/a;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaY/a;-><init>(Lap/c;)V

    iput-object v0, p0, LaY/Y;->G:LaY/a;

    new-instance v0, LaX/a;

    invoke-virtual {p1}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v1

    invoke-direct {v0, v1}, LaX/a;-><init>(Lap/c;)V

    iput-object v0, p0, LaY/Y;->H:LaX/a;

    return-void
.end method

.method public static Y()I
    .registers 3

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    sget-object v2, LaY/Y;->u:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_11

    sget-object v2, LaY/Y;->u:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_12

    sget-object v1, LaY/Y;->t:[I

    aget v1, v1, v0

    :cond_11
    return v1

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static Z()I
    .registers 2

    sget v0, LaY/Y;->w:I

    add-int/lit8 v1, v0, 0x1

    sput v1, LaY/Y;->w:I

    return v0
.end method

.method private a(Lam/b;LaY/i;Z)Lam/b;
    .registers 7

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lam/b;->a(I)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p2}, LaY/i;->ax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    const/4 v1, 0x3

    invoke-virtual {p2}, LaY/i;->aQ()I

    move-result v2

    invoke-static {v2}, Lar/e;->a(I)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(I[B)V

    const/4 v1, 0x4

    invoke-virtual {p2}, LaY/i;->aA()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(IZ)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p3}, Lam/b;->b(IZ)V

    return-object v0
.end method

.method public static a(IZ)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, LaY/Y;->t:[I

    array-length v1, v1

    if-ge v0, v1, :cond_10

    sget-object v1, LaY/Y;->t:[I

    aget v1, v1, v0

    if-ne v1, p0, :cond_11

    sget-object v1, LaY/Y;->u:[Z

    aput-boolean p1, v1, v0

    :cond_10
    return-void

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private a(LaY/i;)V
    .registers 5

    invoke-virtual {p1}, LaY/i;->aD()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, LaY/i;->aE()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v2, p0, LaY/Y;->q:Ljava/util/Vector;

    monitor-enter v2

    :try_start_10
    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v1, LaY/Y;->b:I

    if-le v0, v1, :cond_43

    sget v0, LaY/Y;->b:I

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_25
    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3c

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-direct {p0, v0}, LaY/Y;->m(LaY/i;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    :cond_3c
    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    sget v1, LaY/Y;->b:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_43
    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/Y;->A:Z

    monitor-exit v2

    goto :goto_c

    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_10 .. :try_end_4a} :catchall_48

    throw v0
.end method

.method private a(LaY/i;Ljava/lang/String;)V
    .registers 5

    const/16 v1, 0x43

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    packed-switch v0, :pswitch_data_2a

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    invoke-static {v0}, LaY/Y;->h(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_18
    invoke-direct {p0}, LaY/Y;->an()V

    return-void

    :pswitch_1c
    check-cast p1, LaY/t;

    invoke-virtual {p1}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_18

    :pswitch_data_2a
    .packed-switch 0x6
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method private a(Lam/b;)V
    .registers 2

    invoke-static {p1}, Laf/o;->a(Lam/b;)V

    invoke-direct {p0}, LaY/Y;->an()V

    return-void
.end method

.method private a(Ljava/io/DataInput;IZZ)V
    .registers 14

    const/4 v8, 0x0

    new-instance v0, LaY/aG;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    sget-object v5, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iget-object v6, p0, LaY/Y;->h:LaJ/k;

    invoke-static {}, LaY/Y;->Y()I

    move-result v7

    invoke-direct/range {v0 .. v7}, LaY/aG;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;I)V

    invoke-virtual {v0, p1}, LaY/aG;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0, p2}, LaY/aG;->e(I)V

    invoke-virtual {v0, p3}, LaY/aG;->g(Z)V

    if-eqz p4, :cond_32

    invoke-virtual {v0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->Z()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {p0, v0, v8, v8}, LaY/Y;->a(LaY/i;ZZ)Z

    :goto_31
    return-void

    :cond_32
    invoke-direct {p0, v0}, LaY/Y;->a(LaY/i;)V

    goto :goto_31

    :cond_36
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_31
.end method

.method private a(Lam/b;Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    invoke-virtual {p1}, Lam/b;->d()I

    move-result v1

    if-lez v1, :cond_17

    invoke-virtual {p1}, Lam/b;->f()[B

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lak/m;->b([BLjava/lang/String;)I

    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    invoke-interface {v0, p2}, Lak/m;->b(Ljava/lang/String;)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_1a} :catch_26

    goto :goto_15

    :catch_1b
    move-exception v0

    const-string v1, "LAYER_MANAGER-LayerManager Error saving layers"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, LaY/Y;->ak()V

    :goto_24
    const/4 v0, 0x0

    goto :goto_16

    :catch_26
    move-exception v0

    const-string v1, "LAYER_MANAGER-LayerManager OOME saving layers"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, LaY/Y;->ak()V

    goto :goto_24
.end method

.method private af()V
    .registers 3

    const/4 v1, 0x0

    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    const/16 v0, 0x12

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    return-void
.end method

.method private ag()LaY/an;
    .registers 7

    new-instance v1, LaY/an;

    invoke-direct {v1}, LaY/an;-><init>()V

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->l()LaR/i;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, LaR/i;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/prefetch/android/n;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->a()Lt/af;

    move-result-object v3

    invoke-virtual {v3}, Lt/af;->i()Lt/V;

    move-result-object v3

    invoke-virtual {v3}, Lt/V;->f()Lt/L;

    move-result-object v3

    new-instance v4, LaJ/B;

    invoke-virtual {v3}, Lt/L;->a()I

    move-result v5

    invoke-virtual {v3}, Lt/L;->c()I

    move-result v3

    invoke-direct {v4, v5, v3}, LaJ/B;-><init>(II)V

    new-instance v3, LaY/am;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/n;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, LaY/am;-><init>(LaJ/B;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LaY/an;->a(LaY/am;)V

    goto :goto_14

    :cond_46
    return-object v1
.end method

.method private ah()V
    .registers 4

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/U;

    invoke-virtual {v0, v2}, LaY/U;->a(Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method private ai()V
    .registers 8

    const/4 v6, 0x1

    new-instance v3, Lam/b;

    sget-object v0, LbD/Z;->o:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, LaY/Y;->j:Ljava/util/Vector;

    monitor-enter v4

    const/4 v0, 0x0

    :goto_11
    :try_start_11
    iget-object v5, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v0, v5, :cond_25

    iget-object v5, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_25
    monitor-exit v4
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_50

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    if-eqz v0, :cond_97

    invoke-virtual {v0}, LaY/i;->aO()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-direct {p0, v3, v0, v6}, LaY/Y;->a(Lam/b;LaY/i;Z)Lam/b;

    move-result-object v1

    invoke-virtual {v3, v6, v1}, Lam/b;->a(ILam/b;)V

    iget-object v1, p0, LaY/Y;->F:Lcom/google/googlenav/layer/r;

    if-eqz v1, :cond_4e

    iget-object v1, p0, LaY/Y;->F:Lcom/google/googlenav/layer/r;

    invoke-interface {v1, v0}, Lcom/google/googlenav/layer/r;->a(LaY/i;)V

    :cond_4e
    :goto_4e
    move-object v1, v0

    goto :goto_2a

    :catchall_50
    move-exception v0

    :try_start_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v0

    :cond_53
    const/4 v2, -0x1

    const/16 v0, -0xa

    if-eqz v1, :cond_95

    invoke-virtual {v1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->d()B

    move-result v2

    const/16 v0, 0xa

    invoke-virtual {v3, v0, v2}, Lam/b;->h(II)V

    invoke-virtual {v1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->c()I

    move-result v0

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v0}, Lam/b;->h(II)V

    const/16 v4, 0xe

    invoke-virtual {v1}, LaY/i;->aC()I

    move-result v1

    invoke-virtual {v3, v4, v1}, Lam/b;->h(II)V

    move v1, v2

    :goto_7c
    iget-boolean v2, p0, LaY/Y;->z:Z

    if-eqz v2, :cond_88

    iget-byte v2, p0, LaY/Y;->x:B

    if-ne v1, v2, :cond_88

    iget v2, p0, LaY/Y;->y:I

    if-eq v0, v2, :cond_94

    :cond_88
    const-string v2, "PROTO_SAVED_LAYER_STATE"

    invoke-direct {p0, v3, v2}, LaY/Y;->a(Lam/b;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, LaY/Y;->z:Z

    iput-byte v1, p0, LaY/Y;->x:B

    iput v0, p0, LaY/Y;->y:I

    :cond_94
    return-void

    :cond_95
    move v1, v2

    goto :goto_7c

    :cond_97
    move-object v0, v1

    goto :goto_4e
.end method

.method private aj()V
    .registers 7

    new-instance v2, Lam/b;

    sget-object v0, LbD/Z;->o:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v3, p0, LaY/Y;->q:Ljava/util/Vector;

    monitor-enter v3

    :try_start_a
    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_13
    if-ltz v1, :cond_39

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->aO()Z

    move-result v4

    if-eqz v4, :cond_35

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v2, v0, v5}, LaY/Y;->a(Lam/b;LaY/i;Z)Lam/b;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lam/b;->a(ILam/b;)V

    iget-object v4, p0, LaY/Y;->F:Lcom/google/googlenav/layer/r;

    if-eqz v4, :cond_35

    iget-object v4, p0, LaY/Y;->F:Lcom/google/googlenav/layer/r;

    invoke-interface {v4, v0}, Lcom/google/googlenav/layer/r;->a(LaY/i;)V

    :cond_35
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_13

    :cond_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_a .. :try_end_3a} :catchall_47

    iget-boolean v0, p0, LaY/Y;->A:Z

    if-nez v0, :cond_46

    const-string v0, "PROTO_SAVED_RECENT_LAYERS"

    invoke-direct {p0, v2, v0}, LaY/Y;->a(Lam/b;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, LaY/Y;->A:Z

    :cond_46
    return-void

    :catchall_47
    move-exception v0

    :try_start_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v0
.end method

.method private ak()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "PROTO_SAVED_LAYER_STATE"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    const-string v1, "PROTO_SAVED_RECENT_LAYERS"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    const-string v1, "LAYER_"

    invoke-interface {v0, v1}, Lak/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method private al()V
    .registers 3

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    const-string v1, "SAVED_SEARCH_1_DB"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    const-string v1, "SAVED_SEARCH_1"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    const-string v1, "PROTO_SAVED_SEARCH_DB"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    const-string v1, "SAVED_SEARCH_INFO"

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    return-void
.end method

.method private am()V
    .registers 5

    const/4 v3, 0x0

    move v2, v3

    :goto_2
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2c

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    if-nez v1, :cond_28

    move-object v1, v0

    check-cast v1, LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ab()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0, v3}, LaY/i;->g(Z)V

    :cond_28
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2c
    return-void
.end method

.method private an()V
    .registers 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    invoke-static {v0}, LaY/Y;->h(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_26
    const/16 v0, 0x43

    const-string v1, "v"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private ao()V
    .registers 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    invoke-static {v0}, LaY/Y;->h(I)C

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_26
    const/16 v0, 0x43

    const-string v1, "r"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laf/m;->a(ILjava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private b(IZ)V
    .registers 7

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2f

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v3

    if-ne v3, p1, :cond_2b

    invoke-virtual {v0}, LaY/i;->aA()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_2f
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p2, v2}, LaY/Y;->b(LaY/i;ZZ)V

    goto :goto_33

    :cond_44
    invoke-virtual {p0}, LaY/Y;->d()V

    return-void
.end method

.method private b(LaY/i;)V
    .registers 4

    new-instance v0, LaY/Z;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaY/Z;-><init>(LaY/Y;Lap/c;LaY/i;)V

    invoke-virtual {v0}, LaY/Z;->g()V

    return-void
.end method

.method private b(LaY/i;I)V
    .registers 5

    invoke-virtual {p1}, LaY/i;->ah()Z

    move-result v0

    invoke-virtual {p1, p2}, LaY/i;->b(I)V

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {p1}, LaY/i;->m()V

    if-eqz v0, :cond_26

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_26

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    if-eqz v0, :cond_26

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    invoke-interface {v0, p1}, LaY/ac;->a(LaY/i;)V

    :cond_26
    :goto_26
    return-void

    :cond_27
    invoke-virtual {p1}, LaY/i;->am()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, LaY/i;->b(B)V

    invoke-virtual {p0, p1}, LaY/Y;->c(LaY/i;)V

    goto :goto_26
.end method

.method private b(Ljava/io/DataInput;IZZ)V
    .registers 12

    const/4 v6, 0x0

    new-instance v0, LaY/G;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v5, p0, LaY/Y;->d:LaE/h;

    invoke-direct/range {v0 .. v5}, LaY/G;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;)V

    invoke-virtual {v0, p1}, LaY/G;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0, p2}, LaY/G;->e(I)V

    invoke-virtual {v0, p3}, LaY/G;->g(Z)V

    if-eqz p4, :cond_26

    invoke-virtual {p0, v0, v6, v6}, LaY/Y;->a(LaY/i;ZZ)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/G;->b(B)V

    :goto_25
    return-void

    :cond_26
    invoke-direct {p0, v0}, LaY/Y;->a(LaY/i;)V

    goto :goto_25

    :cond_2a
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_25
.end method

.method public static c(I)I
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_38

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown layer of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    move v0, v1

    :goto_1f
    :pswitch_1f
    return v0

    :pswitch_20
    move v0, v1

    goto :goto_1f

    :pswitch_22
    move v0, v1

    goto :goto_1f

    :pswitch_24
    move v0, v1

    goto :goto_1f

    :pswitch_26
    move v0, v1

    goto :goto_1f

    :pswitch_28
    move v0, v1

    goto :goto_1f

    :pswitch_2a
    move v0, v1

    goto :goto_1f

    :pswitch_2c
    move v0, v1

    goto :goto_1f

    :pswitch_2e
    move v0, v1

    goto :goto_1f

    :pswitch_30
    move v0, v1

    goto :goto_1f

    :pswitch_32
    move v0, v1

    goto :goto_1f

    :pswitch_34
    move v0, v1

    goto :goto_1f

    :pswitch_36
    move v0, v1

    goto :goto_1f

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_22
        :pswitch_24
        :pswitch_5
        :pswitch_26
        :pswitch_1f
        :pswitch_28
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1f
        :pswitch_5
        :pswitch_2a
        :pswitch_5
        :pswitch_2c
        :pswitch_2e
        :pswitch_5
        :pswitch_30
        :pswitch_32
        :pswitch_5
        :pswitch_20
        :pswitch_34
        :pswitch_36
    .end packed-switch
.end method

.method private c(LaY/i;I)V
    .registers 5

    invoke-virtual {p1, p2}, LaY/i;->b(I)V

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p1}, LaY/i;->ae()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {p1}, LaY/i;->k()V

    :goto_16
    return-void

    :cond_17
    invoke-virtual {p1}, LaY/i;->af()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, LaY/i;->l()V

    goto :goto_16

    :cond_21
    invoke-virtual {p1}, LaY/i;->m()V

    goto :goto_16

    :cond_25
    invoke-virtual {p1}, LaY/i;->am()V

    if-eqz v0, :cond_41

    invoke-virtual {v0}, LaY/i;->ai()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p0, p1}, LaY/Y;->c(LaY/i;)V

    invoke-virtual {p1}, LaY/i;->ad()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p1}, LaY/i;->l()V

    goto :goto_16

    :cond_3d
    invoke-virtual {p1}, LaY/i;->k()V

    goto :goto_16

    :cond_41
    invoke-virtual {p0, p1}, LaY/Y;->c(LaY/i;)V

    goto :goto_16
.end method

.method private c(Ljava/io/DataInput;IZZ)V
    .registers 11

    const/4 v5, 0x0

    new-instance v0, LaY/bh;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-direct {v0, v1, v2, v3, v4}, LaY/bh;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    invoke-virtual {v0, p1}, LaY/bh;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0, p2}, LaY/bh;->e(I)V

    invoke-virtual {v0, p3}, LaY/bh;->g(Z)V

    if-eqz p4, :cond_24

    invoke-virtual {p0, v0, v5, v5}, LaY/Y;->a(LaY/i;ZZ)Z

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LaY/bh;->b(B)V

    :goto_23
    return-void

    :cond_24
    invoke-direct {p0, v0}, LaY/Y;->a(LaY/i;)V

    goto :goto_23

    :cond_28
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_23
.end method

.method private d(Ljava/io/DataInput;IZZ)V
    .registers 14

    const/4 v8, 0x0

    new-instance v0, LaY/t;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v5, p0, LaY/Y;->h:LaJ/k;

    invoke-direct/range {v0 .. v5}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaJ/k;)V

    invoke-virtual {v0, p1}, LaY/t;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msid:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    new-instance v7, LaY/aV;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-virtual {v0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v5

    iget-object v6, p0, LaY/Y;->h:LaJ/k;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, LaY/aV;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    move-object v0, v7

    :cond_3b
    :goto_3b
    invoke-virtual {v0, p2}, LaY/t;->e(I)V

    invoke-virtual {v0, p3}, LaY/t;->g(Z)V

    if-eqz p4, :cond_58

    invoke-virtual {p0, v0, v8, v8}, LaY/Y;->a(LaY/i;ZZ)Z

    :goto_46
    return-void

    :cond_47
    const-string v2, "LayerTransit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/Y;->b(Lcom/google/googlenav/layer/m;)LaY/t;

    move-result-object v0

    goto :goto_3b

    :cond_58
    invoke-direct {p0, v0}, LaY/Y;->a(LaY/i;)V

    goto :goto_46

    :cond_5c
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_46
.end method

.method private d(LaJ/B;)Z
    .registers 11

    const/4 v6, 0x0

    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/google/googlenav/ui/bw;->ab()[Lah/f;

    move-result-object v0

    aget-object v0, v0, v6

    if-nez v0, :cond_1d

    move v4, v6

    :goto_12
    const/4 v3, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    move v7, v6

    invoke-virtual/range {v0 .. v8}, LaY/Y;->a(LaJ/B;LaJ/B;IIIIILah/e;)Z

    move-result v6

    :cond_1c
    return v6

    :cond_1d
    invoke-interface {v0}, Lah/f;->a()I

    move-result v0

    div-int/lit8 v4, v0, 0x2

    goto :goto_12
.end method

.method private e(Lcom/google/googlenav/aV;)V
    .registers 4

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->k()Lcom/google/googlenav/aW;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    if-eqz v0, :cond_10

    invoke-interface {v1, v0, p1}, Lcom/google/googlenav/aW;->a(Lcom/google/googlenav/ah;Lcom/google/googlenav/aV;)V

    :cond_10
    return-void
.end method

.method private e(Ljava/io/DataInput;IZZ)V
    .registers 16

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    new-instance v0, LaY/K;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->n:Lcom/google/googlenav/android/ac;

    iget-object v5, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v6, p0, LaY/Y;->l:Lax/bD;

    iget-object v7, p0, LaY/Y;->m:Lax/r;

    iget-object v8, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    iget-object v9, p0, LaY/Y;->G:LaY/a;

    iget-object v10, p0, LaY/Y;->H:LaX/a;

    invoke-direct/range {v0 .. v10}, LaY/K;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/af;Lax/bD;Lax/r;Lcom/google/googlenav/ui/at;LaY/a;LaX/a;)V

    invoke-virtual {v0, p1}, LaY/K;->a(Ljava/io/DataInput;)Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-virtual {v0, p2}, LaY/K;->e(I)V

    invoke-virtual {v0, p3}, LaY/K;->g(Z)V

    if-eqz p4, :cond_3b

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, LaY/Y;->a(LaY/i;ZZ)Z

    const/4 v0, 0x1

    sput-boolean v0, LaY/Y;->v:Z

    goto :goto_a

    :cond_3b
    invoke-direct {p0, v0}, LaY/Y;->a(LaY/i;)V

    goto :goto_a

    :cond_3f
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v0

    invoke-virtual {v0}, Laf/b;->n()Lak/m;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAYER_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lak/m;->b(Ljava/lang/String;)Z

    goto :goto_a
.end method

.method private e(Ljava/lang/String;)V
    .registers 14

    const/4 v0, 0x0

    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v1

    invoke-virtual {v1}, Laf/b;->n()Lak/m;

    move-result-object v1

    invoke-interface {v1, p1}, Lak/m;->d(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_12

    array-length v3, v2

    if-nez v3, :cond_13

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-virtual {p0, p1}, LaY/Y;->a(Ljava/lang/String;)Z

    move-result v3

    :try_start_17
    new-instance v4, Lam/b;

    sget-object v5, LbD/Z;->o:Lam/e;

    invoke-direct {v4, v5}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v4, v2}, Lam/b;->a([B)Lam/b;

    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Lam/b;->l(I)I

    move-result v2

    :goto_26
    if-ge v0, v2, :cond_60

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lam/g;->c(Lam/b;II)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Lam/b;->c(I)[B

    move-result-object v7

    invoke-static {v7}, Lar/e;->a([B)I

    move-result v7

    sget v8, LaY/Y;->w:I

    if-lt v7, v8, :cond_44

    add-int/lit8 v8, v7, 0x1

    sput v8, LaY/Y;->w:I

    :cond_44
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LAYER_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Laf/l;->a(Lak/m;Ljava/lang/String;)Ljava/io/DataInput;

    move-result-object v8

    if-nez v8, :cond_b8

    invoke-direct {p0}, LaY/Y;->ak()V

    :cond_60
    if-eqz v3, :cond_12

    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-lez v2, :cond_12

    if-eqz v0, :cond_12

    invoke-virtual {v0}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Lam/b;->d(I)I

    move-result v2

    if-ltz v2, :cond_106

    invoke-interface {v1}, Lcom/google/googlenav/E;->f()I

    move-result v3

    if-ge v2, v3, :cond_106

    const/16 v3, 0xa

    invoke-virtual {v4, v3}, Lam/b;->d(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v0, v3}, LaY/i;->b(B)V

    invoke-interface {v1, v2}, Lcom/google/googlenav/E;->a(I)V

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-static {v4, v1, v2}, Lam/g;->c(Lam/b;II)I

    move-result v1

    invoke-virtual {v0, v1}, LaY/i;->d(I)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_ab} :catch_ad

    goto/16 :goto_12

    :catch_ad
    move-exception v0

    const-string v1, "LAYER_MANAGER-LayersManager load"

    invoke-static {v1, v0}, Laf/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, LaY/Y;->ak()V

    goto/16 :goto_12

    :cond_b8
    const/4 v9, 0x4

    :try_start_b9
    invoke-static {v5, v9}, Lam/g;->h(Lam/b;I)Z

    move-result v9

    const/4 v10, 0x5

    invoke-static {v5, v10}, Lam/g;->h(Lam/b;I)Z

    move-result v5

    if-eqz v5, :cond_e7

    invoke-direct {p0, v6}, LaY/Y;->f(I)I

    move-result v10

    invoke-static {v6}, LaY/Y;->c(I)I

    move-result v11

    if-lt v10, v11, :cond_e7

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many layers of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e7
    packed-switch v6, :pswitch_data_110

    :cond_ea
    :goto_ea
    :pswitch_ea
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_26

    :pswitch_ee
    if-eqz v3, :cond_ea

    invoke-direct {p0, v8, v7, v9, v5}, LaY/Y;->a(Ljava/io/DataInput;IZZ)V

    goto :goto_ea

    :pswitch_f4
    invoke-direct {p0, v8, v7, v9, v5}, LaY/Y;->e(Ljava/io/DataInput;IZZ)V

    goto :goto_ea

    :pswitch_f8
    invoke-direct {p0, v8, v7, v9, v5}, LaY/Y;->d(Ljava/io/DataInput;IZZ)V

    goto :goto_ea

    :pswitch_fc
    if-eqz v3, :cond_ea

    invoke-direct {p0, v8, v7, v9, v5}, LaY/Y;->b(Ljava/io/DataInput;IZZ)V

    goto :goto_ea

    :pswitch_102
    invoke-direct {p0, v8, v7, v9, v5}, LaY/Y;->c(Ljava/io/DataInput;IZZ)V

    goto :goto_ea

    :cond_106
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LaY/i;->b(B)V

    const/4 v0, -0x1

    invoke-interface {v1, v0}, Lcom/google/googlenav/E;->a(I)V
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_10e} :catch_ad

    goto/16 :goto_12

    :pswitch_data_110
    .packed-switch 0x0
        :pswitch_ee
        :pswitch_fc
        :pswitch_ea
        :pswitch_f4
        :pswitch_ea
        :pswitch_ea
        :pswitch_f8
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_ea
        :pswitch_102
    .end packed-switch
.end method

.method private f(I)I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1f

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    if-ne v0, p1, :cond_1b

    add-int/lit8 v2, v2, 0x1

    :cond_1b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_1f
    return v2
.end method

.method private f(Ljava/lang/String;)Lam/b;
    .registers 4

    const/16 v0, 0x43

    const/16 v1, 0xd

    invoke-static {v1}, LaY/Y;->h(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Laf/o;->a(ILjava/lang/String;Ljava/lang/String;)Lam/b;

    move-result-object v0

    return-object v0
.end method

.method private g(I)LaY/i;
    .registers 5

    packed-switch p1, :pswitch_data_4a

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has MAX_ALLOWED_INSTANCES > 1."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_22
    const/4 v0, 0x0

    move v1, v0

    :goto_24
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    if-ne v0, p1, :cond_43

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    :goto_42
    return-object v0

    :cond_43
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24

    :cond_47
    const/4 v0, 0x0

    goto :goto_42

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_22
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_22
        :pswitch_3
        :pswitch_3
        :pswitch_22
        :pswitch_3
        :pswitch_22
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method

.method private static h(I)C
    .registers 2

    add-int/lit8 v0, p0, 0x61

    int-to-char v0, v0

    return v0
.end method

.method private h(Z)V
    .registers 5

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_19

    iget-object v2, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_19
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, p1}, LaY/Y;->b(LaY/i;ZZ)V

    goto :goto_1d

    :cond_2e
    return-void
.end method

.method public static k(LaY/i;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LAYER_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, LaY/i;->aQ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m(LaY/i;)V
    .registers 4

    new-instance v0, LaY/aa;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->aq()Lap/c;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, LaY/aa;-><init>(LaY/Y;Lap/c;LaY/i;)V

    invoke-virtual {v0}, LaY/aa;->g()V

    return-void
.end method

.method private n(LaY/i;)V
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, LaY/Y;->q:Ljava/util/Vector;

    monitor-enter v2

    :try_start_4
    iget-object v1, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_2c

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0, p1}, LaY/i;->a(LaY/i;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v1, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, LaY/Y;->m(LaY/i;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/Y;->A:Z

    monitor-exit v2

    :goto_27
    return-void

    :cond_28
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_2c
    monitor-exit v2

    goto :goto_27

    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0
.end method


# virtual methods
.method public A()LaY/aS;
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/aS;

    return-object v0
.end method

.method public B()LaY/K;
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/K;

    return-object v0
.end method

.method protected C()I
    .registers 12

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v5, -0x1

    iget-object v1, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_c

    :goto_b
    return v5

    :cond_c
    iget-object v1, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ne v1, v8, :cond_16

    move v5, v0

    goto :goto_b

    :cond_16
    const-wide v1, 0x7fffffffffffffffL

    move v4, v5

    move-wide v9, v1

    move-wide v2, v9

    move v1, v0

    :goto_1f
    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_47

    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/U;

    invoke-virtual {v0}, LaY/U;->e()Z

    move-result v6

    if-eqz v6, :cond_39

    :cond_35
    :goto_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1f

    :cond_39
    invoke-virtual {v0}, LaY/U;->d()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_35

    invoke-virtual {v0}, LaY/U;->d()J

    move-result-wide v2

    move v4, v1

    goto :goto_35

    :cond_47
    if-ne v4, v5, :cond_62

    invoke-direct {p0}, LaY/Y;->ah()V

    iget v0, p0, LaY/Y;->P:I

    if-eq v0, v5, :cond_5d

    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    iget v1, p0, LaY/Y;->P:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/U;

    invoke-virtual {v0, v8}, LaY/U;->a(Z)V

    :cond_5d
    invoke-virtual {p0}, LaY/Y;->C()I

    move-result v5

    goto :goto_b

    :cond_62
    move v5, v4

    goto :goto_b
.end method

.method public D()V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v2

    if-nez v2, :cond_2b

    check-cast v0, LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    move-object v0, v1

    :cond_22
    :goto_22
    iget-object v2, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    const-string v3, "22"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/google/googlenav/ui/D;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2b
    move-object v0, v1

    goto :goto_22
.end method

.method public E()V
    .registers 1

    return-void
.end method

.method public F()V
    .registers 6

    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/16 v2, 0xd

    if-ne v0, v2, :cond_2f

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    check-cast v0, LaY/x;

    invoke-virtual {v0}, LaY/x;->bI()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0}, LaY/x;->aa()Z

    move-result v2

    if-eqz v2, :cond_2f

    if-nez v1, :cond_30

    invoke-virtual {p0, v0}, LaY/Y;->f(LaY/i;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-virtual {v0}, LaY/x;->bJ()Z

    move-result v2

    if-nez v2, :cond_2f

    iget-object v2, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v0}, LaY/x;->a()LaJ/B;

    move-result-object v3

    sget v4, LaY/Y;->R:I

    invoke-virtual {v2, v1, v3, v4}, LaJ/u;->a(LaJ/B;LaJ/B;I)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {p0, v0}, LaY/Y;->f(LaY/i;)V

    goto :goto_2f
.end method

.method public G()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_3
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1c

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->X()Z

    move-result v0

    or-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_1c
    if-eqz v2, :cond_22

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/Y;->e(Z)V

    :cond_22
    return v2
.end method

.method public H()V
    .registers 1

    return-void
.end method

.method public I()LaY/i;
    .registers 2

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    goto :goto_9
.end method

.method public J()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    return-object v0
.end method

.method public K()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, LaY/Y;->p:Ljava/util/Vector;

    return-object v0
.end method

.method public L()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    return-object v0
.end method

.method public M()V
    .registers 2

    iget-object v0, p0, LaY/Y;->F:Lcom/google/googlenav/layer/r;

    if-eqz v0, :cond_9

    iget-object v0, p0, LaY/Y;->F:Lcom/google/googlenav/layer/r;

    invoke-interface {v0}, Lcom/google/googlenav/layer/r;->a()V

    :cond_9
    invoke-direct {p0}, LaY/Y;->ai()V

    invoke-direct {p0}, LaY/Y;->aj()V

    return-void
.end method

.method public N()V
    .registers 2

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->M()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, LaY/Y;->al()V

    :cond_d
    sget-object v0, LaB/e;->a:LaB/e;

    invoke-virtual {v0}, LaB/e;->e()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, LaY/Y;->k()LaY/ae;

    :cond_18
    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-direct {p0, v0}, LaY/Y;->e(Ljava/lang/String;)V

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->a()V

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/Y;->c(LaY/i;)V

    return-void
.end method

.method public O()V
    .registers 2

    const-string v0, "PROTO_SAVED_RECENT_LAYERS"

    invoke-direct {p0, v0}, LaY/Y;->e(Ljava/lang/String;)V

    invoke-direct {p0}, LaY/Y;->ao()V

    return-void
.end method

.method public P()Z
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0}, LaY/Y;->l()LaY/ae;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, LaY/Y;->l()LaY/ae;

    move-result-object v1

    invoke-virtual {v1}, LaY/ae;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    iget-object v1, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_11

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->b()I

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->c()Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_3a

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    invoke-virtual {v1}, LaY/i;->ah()Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_3a
    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    invoke-virtual {v1}, LaY/i;->ax()I

    move-result v1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_11

    :cond_4c
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public Q()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_24

    iget-object v0, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_24

    move v0, v1

    :goto_1a
    if-nez v0, :cond_26

    invoke-virtual {p0}, LaY/Y;->P()Z

    move-result v0

    if-eqz v0, :cond_26

    move v0, v1

    :goto_23
    return v0

    :cond_24
    move v0, v2

    goto :goto_1a

    :cond_26
    move v0, v2

    goto :goto_23
.end method

.method public R()Z
    .registers 2

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, LaY/i;->aw()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public S()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, LaY/Y;->D:Ljava/lang/String;

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0}, LaY/Y;->A()LaY/aS;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, LaY/aS;->Y()V

    :cond_13
    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->Y()V

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->X()V

    goto :goto_9
.end method

.method public T()Z
    .registers 2

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, LaY/i;->aa()Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public U()V
    .registers 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, LaY/Y;->af()V

    invoke-direct {p0, v5, v2}, LaY/Y;->b(IZ)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    :goto_d
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_38

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v4

    if-nez v4, :cond_34

    check-cast v0, LaY/aG;

    invoke-virtual {v0}, LaY/aG;->bn()Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_38
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {p0, v0, v2, v5}, LaY/Y;->b(LaY/i;ZZ)V

    goto :goto_3c

    :cond_4c
    invoke-virtual {p0}, LaY/Y;->d()V

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/Y;->c(LaY/i;)V

    return-void
.end method

.method protected V()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/Y;->a(Z)LaY/aT;

    invoke-virtual {p0}, LaY/Y;->s()V

    invoke-virtual {p0}, LaY/Y;->t()LaY/aS;

    sget-object v0, LaB/e;->a:LaB/e;

    invoke-virtual {v0}, LaB/e;->e()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, LaY/Y;->k()LaY/ae;

    :cond_15
    return-void
.end method

.method public W()V
    .registers 3

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/M;->ak()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v0}, LaY/i;->am()V

    :goto_13
    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/16 v1, 0x15

    if-eq v0, v1, :cond_26

    invoke-virtual {p0}, LaY/Y;->w()LaY/bh;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->J()V

    :cond_26
    return-void

    :cond_27
    invoke-virtual {v0}, LaY/i;->Z()V

    goto :goto_13
.end method

.method public X()Lcom/google/googlenav/D;
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, LaY/i;->ax()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_10

    :cond_e
    move-object v0, v2

    :goto_f
    return-object v0

    :cond_10
    invoke-virtual {v1}, LaY/i;->ax()I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_23

    move-object v0, v1

    check-cast v0, LaY/x;

    invoke-virtual {v0}, LaY/x;->bI()Z

    move-result v0

    if-eqz v0, :cond_23

    move-object v0, v2

    goto :goto_f

    :cond_23
    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {v1}, LaY/i;->ax()I

    move-result v0

    if-nez v0, :cond_48

    invoke-virtual {v1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/E;->f()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_48

    invoke-virtual {v1}, LaY/i;->as()Lcom/google/googlenav/E;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/googlenav/E;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    goto :goto_f

    :cond_48
    invoke-virtual {v1}, LaY/i;->s()Lcom/google/googlenav/D;

    move-result-object v0

    goto :goto_f
.end method

.method public a(Lau/b;)LaY/G;
    .registers 9

    invoke-virtual {p0}, LaY/Y;->h()V

    new-instance v0, LaY/G;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v5, p0, LaY/Y;->d:LaE/h;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, LaY/G;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaE/h;Lcom/google/googlenav/E;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/ah;ZBZZ)LaY/W;
    .registers 16

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, LaY/Y;->b(I)V

    new-instance v0, LaY/W;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v5, p0, LaY/Y;->h:LaJ/k;

    move-object v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v0 .. v9}, LaY/W;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaJ/k;Lcom/google/googlenav/ah;ZBZ)V

    invoke-virtual {p0, v0, p5}, LaY/Y;->a(LaY/i;Z)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/aV;Z)LaY/aG;
    .registers 12

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ap()Z

    move-result v0

    if-nez p2, :cond_d

    if-eqz v0, :cond_10

    :cond_d
    invoke-direct {p0, v1, v1}, LaY/Y;->b(IZ)V

    :cond_10
    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    :cond_16
    invoke-direct {p0}, LaY/Y;->af()V

    invoke-virtual {p0, v1}, LaY/Y;->b(I)V

    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/Q;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iget-object v2, p0, LaY/Y;->h:LaJ/k;

    iget-object v3, p0, LaY/Y;->e:LaJ/p;

    iget-object v4, p0, LaY/Y;->f:LaJ/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ap()Z

    move-result v0

    if-eqz v0, :cond_4e

    const/4 v8, 0x5

    :goto_37
    new-instance v0, LaY/aG;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v6

    iget-object v7, p0, LaY/Y;->h:LaJ/k;

    invoke-direct/range {v0 .. v8}, LaY/aG;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;LaJ/k;I)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0

    :cond_4e
    invoke-static {}, LaY/Y;->Y()I

    move-result v8

    goto :goto_37
.end method

.method public a(Z)LaY/aT;
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, LaY/Y;->b(I)V

    new-instance v1, LaY/aT;

    iget-object v2, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v3, p0, LaY/Y;->e:LaJ/p;

    iget-object v4, p0, LaY/Y;->f:LaJ/u;

    iget-object v5, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-direct {v1, v2, v3, v4, v5}, LaY/aT;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    sget-object v2, Lcom/google/googlenav/z;->a:Lcom/google/googlenav/z;

    invoke-static {v2}, Lcom/google/googlenav/u;->c(Lcom/google/googlenav/z;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-virtual {p0, v1, v0, v0}, LaY/Y;->a(LaY/i;ZZ)Z

    :goto_1d
    return-object v1

    :cond_1e
    if-nez p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    invoke-virtual {p0, v1, v0}, LaY/Y;->a(LaY/i;Z)V

    goto :goto_1d
.end method

.method public a(LaJ/B;)LaY/al;
    .registers 8

    const/4 v1, 0x0

    const/16 v0, 0x16

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    iget-object v0, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v0, v1}, LaJ/u;->a(I)V

    iget-object v0, p0, LaY/Y;->f:LaJ/u;

    const/16 v1, 0xb

    invoke-static {v1}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LaJ/u;->e(LaJ/B;LaJ/Y;)V

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    const/16 v1, 0x2ae

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/D;->b(Ljava/lang/String;)V

    new-instance v0, LaY/al;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-direct {p0}, LaY/Y;->ag()LaY/an;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, LaY/al;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;LaY/an;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/E;)LaY/az;
    .registers 9

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, LaY/Y;->b(I)V

    new-instance v0, LaY/az;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-static {}, LaY/Y;->Y()I

    move-result v6

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaY/az;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;I)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method protected a(Lcom/google/googlenav/layer/m;)LaY/ba;
    .registers 9

    new-instance v0, LaY/ba;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    new-instance v6, LaJ/k;

    invoke-direct {v6}, LaJ/k;-><init>()V

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaY/ba;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bJ;)LaY/bd;
    .registers 8

    invoke-virtual {p0}, LaY/Y;->j()V

    new-instance v0, LaY/bd;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaY/bd;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method public a(Lau/v;)LaY/bh;
    .registers 8

    invoke-virtual {p0}, LaY/Y;->i()V

    new-instance v0, LaY/bh;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaY/bh;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/aa;)LaY/br;
    .registers 8

    invoke-virtual {p0}, LaY/Y;->j()V

    new-instance v0, LaY/br;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, LaY/br;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method public a(Lcom/google/googlenav/aV;)LaY/s;
    .registers 11

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_5a

    const/4 v0, 0x1

    :goto_f
    if-nez v0, :cond_5c

    invoke-direct {p0}, LaY/Y;->af()V

    :goto_14
    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/x;->c()Lcom/google/googlenav/ui/wizard/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/y;->a()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2f

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, LaY/i;->aS()V

    :cond_2f
    invoke-static {}, LaY/Y;->Y()I

    move-result v8

    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/Q;

    sget-object v1, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iget-object v2, p0, LaY/Y;->h:LaJ/k;

    iget-object v3, p0, LaY/Y;->e:LaJ/p;

    iget-object v4, p0, LaY/Y;->f:LaJ/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V

    new-instance v0, LaY/s;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    sget-object v6, Lcom/google/googlenav/layer/m;->a:Lcom/google/googlenav/layer/m;

    iget-object v7, p0, LaY/Y;->h:LaJ/k;

    invoke-direct/range {v0 .. v8}, LaY/s;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;LaJ/k;I)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_f

    :cond_5c
    invoke-virtual {p0}, LaY/Y;->e()V

    goto :goto_14
.end method

.method public a(Lcom/google/googlenav/layer/m;Z)LaY/t;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v0, v1}, LaY/Y;->a(Lcom/google/googlenav/layer/m;ZZZ)LaY/t;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/layer/m;ZZZ)LaY/t;
    .registers 12

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LayerTransit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, p1}, LaY/Y;->b(Lcom/google/googlenav/layer/m;)LaY/t;

    move-result-object v3

    :goto_10
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, LaY/Y;->a(Lcom/google/googlenav/layer/m;ZLaY/t;ZZ)V

    return-object v3

    :cond_19
    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->i()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_38

    new-instance v6, LaJ/k;

    invoke-direct {v6}, LaJ/k;-><init>()V

    :goto_28
    new-instance v0, LaY/t;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    move-object v3, v0

    goto :goto_10

    :cond_38
    iget-object v6, p0, LaY/Y;->h:LaJ/k;

    goto :goto_28
.end method

.method public a(LaJ/B;Lt/y;Ljava/lang/String;Z[Ljava/lang/String;)LaY/x;
    .registers 8

    new-instance v0, Lcom/google/googlenav/ah;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/google/googlenav/ah;-><init>(LaJ/g;Ljava/lang/String;B)V

    invoke-virtual {v0, p2}, Lcom/google/googlenav/ah;->a(Lt/y;)V

    new-instance v1, Lcom/google/googlenav/bk;

    invoke-direct {v1, v0}, Lcom/google/googlenav/bk;-><init>(Lcom/google/googlenav/ah;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, p4, p5}, LaY/Y;->a(Lcom/google/googlenav/bk;BZ[Ljava/lang/String;)LaY/x;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/googlenav/bk;BZ[Ljava/lang/String;)LaY/x;
    .registers 15

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, LaY/Y;->b(I)V

    invoke-virtual {p1}, Lcom/google/googlenav/bk;->e()Lcom/google/googlenav/D;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/googlenav/D;->a()LaJ/B;

    move-result-object v0

    invoke-direct {p0, v0}, LaY/Y;->d(LaJ/B;)Z

    move-result v8

    if-eqz v8, :cond_41

    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->f()[Ljava/lang/String;

    move-result-object v7

    :goto_1e
    if-nez v8, :cond_24

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaY/Y;->e(Z)V

    :cond_24
    const-string v0, "s"

    invoke-direct {p0, v0}, LaY/Y;->f(Ljava/lang/String;)Lam/b;

    move-result-object v9

    new-instance v0, LaY/x;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v9}, LaY/x;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/E;Z[Ljava/lang/String;ZLam/b;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v9}, LaY/Y;->a(LaY/i;ZLam/b;)V

    invoke-virtual {v0, p2}, LaY/x;->a(B)V

    return-object v0

    :cond_41
    move-object v7, p4

    goto :goto_1e
.end method

.method public a()V
    .registers 3

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LaY/Y;->r:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, LaY/Y;->r:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/layer/l;

    invoke-interface {v0}, Lcom/google/googlenav/layer/l;->a()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method public a(FF)V
    .registers 3

    return-void
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .registers 3

    iput p1, p0, LaY/Y;->B:I

    iput-object p2, p0, LaY/Y;->C:Ljava/lang/Object;

    return-void
.end method

.method public a(LaY/K;)V
    .registers 5

    const/4 v2, -0x1

    iget v0, p0, LaY/Y;->B:I

    iget-object v1, p0, LaY/Y;->C:Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v1}, LaY/K;->a(IILjava/lang/Object;)Z

    iput v2, p0, LaY/Y;->B:I

    const/4 v0, 0x0

    iput-object v0, p0, LaY/Y;->C:Ljava/lang/Object;

    return-void
.end method

.method public a(LaY/ac;)V
    .registers 2

    iput-object p1, p0, LaY/Y;->S:LaY/ac;

    return-void
.end method

.method public a(LaY/ad;Lz/a;)V
    .registers 5

    iget-object v1, p0, LaY/Y;->I:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, LaY/Y;->I:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(LaY/az;)V
    .registers 4

    invoke-virtual {p1}, LaY/az;->a()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/aV;->t()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaY/Y;->b(Lcom/google/googlenav/aV;Z)V

    :cond_18
    return-void
.end method

.method protected a(LaY/i;I)V
    .registers 5

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->ak()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-direct {p0, p1, p2}, LaY/Y;->c(LaY/i;I)V

    :goto_d
    invoke-virtual {p1}, LaY/i;->ag()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->c()LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LaY/i;->a(LaJ/B;LaJ/Y;)LaJ/B;

    move-result-object v0

    iget-object v1, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v1, v0}, LaJ/u;->b(LaJ/B;)V

    :cond_28
    return-void

    :cond_29
    invoke-direct {p0, p1, p2}, LaY/Y;->b(LaY/i;I)V

    goto :goto_d
.end method

.method public a(LaY/i;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, LaY/Y;->a(LaY/i;ZLam/b;)V

    return-void
.end method

.method public a(LaY/i;ZLam/b;)V
    .registers 5

    if-nez p2, :cond_f

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->aZ()V

    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, LaY/Y;->a(LaY/i;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p1}, LaY/i;->aY()V

    invoke-virtual {p1}, LaY/i;->aO()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, LaY/Y;->Z()I

    move-result v0

    invoke-virtual {p1, v0}, LaY/i;->e(I)V

    invoke-direct {p0, p1}, LaY/Y;->b(LaY/i;)V

    :cond_29
    invoke-virtual {p0}, LaY/Y;->d()V

    :cond_2c
    if-eqz p3, :cond_32

    invoke-direct {p0, p3}, LaY/Y;->a(Lam/b;)V

    :goto_31
    return-void

    :cond_32
    const-string v0, "s"

    invoke-direct {p0, p1, v0}, LaY/Y;->a(LaY/i;Ljava/lang/String;)V

    goto :goto_31
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0, p1}, LaY/i;->a(Landroid/content/res/Configuration;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    return-void
.end method

.method public a(Lcom/google/googlenav/L;LaY/az;)V
    .registers 9

    const/4 v5, 0x4

    invoke-virtual {p2}, LaY/az;->i()Lcom/google/googlenav/aV;

    move-result-object v1

    new-instance v0, Lcom/google/googlenav/bc;

    invoke-direct {v0}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->x()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->N()LaJ/M;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->a(LaJ/M;)Lcom/google/googlenav/bc;

    move-result-object v0

    iget-object v2, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v2}, LaJ/u;->f()LaJ/H;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->V()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->s()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, LaY/az;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    invoke-virtual {v2}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    :cond_4c
    :goto_4c
    return-void

    :cond_4d
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->D()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-virtual {p2}, LaY/az;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    invoke-virtual {v2}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    goto :goto_4c

    :cond_6e
    invoke-virtual {p2}, LaY/az;->b()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-virtual {p2}, LaY/az;->bg()Lcom/google/googlenav/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->F()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-virtual {v3}, Lcom/google/googlenav/ah;->an()Ljava/lang/String;

    move-result-object v0

    :cond_86
    invoke-virtual {v1}, Lcom/google/googlenav/aV;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/google/googlenav/aV;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    invoke-virtual {p2}, LaY/az;->bg()Lcom/google/googlenav/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ah;->ao()[Lam/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->a([Lam/b;)Lcom/google/googlenav/bc;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->S()LaJ/H;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    invoke-virtual {v2}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/googlenav/L;->a(Lcom/google/googlenav/bb;)V

    goto :goto_4c
.end method

.method public a(Lcom/google/googlenav/aV;I)V
    .registers 5

    invoke-virtual {p0, p1}, LaY/Y;->a(Lcom/google/googlenav/E;)LaY/az;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, LaY/az;->a(Lcom/google/googlenav/aV;ZI)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;ILcom/google/googlenav/aW;)V
    .registers 5

    invoke-virtual {p0, p1}, LaY/Y;->a(Lcom/google/googlenav/E;)LaY/az;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p2}, LaY/az;->a(Lcom/google/googlenav/aV;Lcom/google/googlenav/aW;I)V

    return-void
.end method

.method public a(Lcom/google/googlenav/aV;Lcom/google/googlenav/A;Z)V
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->k()Lcom/google/googlenav/aW;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aA()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ne v0, v3, :cond_18

    invoke-direct {p0, p1}, LaY/Y;->e(Lcom/google/googlenav/aV;)V

    :goto_17
    return-void

    :cond_18
    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->k()Lcom/google/googlenav/aW;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, LaY/Y;->a(Lcom/google/googlenav/aV;ILcom/google/googlenav/aW;)V

    goto :goto_17

    :cond_21
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->s()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {p0, p1, v2}, LaY/Y;->a(Lcom/google/googlenav/aV;I)V

    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ab()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {p0, v0}, LaY/Y;->a(Lcom/google/googlenav/ah;)V

    :cond_39
    invoke-virtual {p2}, Lcom/google/googlenav/A;->d()V

    goto :goto_17

    :cond_3d
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-ne v0, v3, :cond_56

    invoke-virtual {p2}, Lcom/google/googlenav/A;->a()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-virtual {p0, p1, v2}, LaY/Y;->a(Lcom/google/googlenav/aV;Z)LaY/aG;

    invoke-virtual {p1, v2}, Lcom/google/googlenav/aV;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    check-cast v0, Lcom/google/googlenav/ah;

    invoke-virtual {p2, v0}, Lcom/google/googlenav/A;->a(Lcom/google/googlenav/ah;)V

    goto :goto_2a

    :cond_56
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->f()I

    move-result v0

    if-gtz v0, :cond_68

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->u()Z

    move-result v0

    if-nez v0, :cond_68

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->F()Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_68
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->x()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_a3

    invoke-static {}, Lcom/google/googlenav/M;->a()Lcom/google/googlenav/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/M;->i()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-static {}, Lax/aa;->l()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, LaY/Y;->B()LaY/K;

    move-result-object v0

    if-nez v0, :cond_9a

    sget-boolean v1, LaY/Y;->v:Z

    if-eqz v1, :cond_9a

    invoke-virtual {p0, p1}, LaY/Y;->c(Lcom/google/googlenav/aV;)LaY/K;

    move-result-object v0

    :goto_8d
    sget-boolean v1, LaY/Y;->v:Z

    if-eqz v1, :cond_2a

    if-nez p3, :cond_2a

    invoke-virtual {p0, p1}, LaY/Y;->d(Lcom/google/googlenav/aV;)V

    invoke-virtual {v0, v3, p1}, LaY/K;->a(ZLcom/google/googlenav/aV;)V

    goto :goto_2a

    :cond_9a
    if-eqz v0, :cond_9f

    invoke-virtual {p0, v0}, LaY/Y;->a(LaY/K;)V

    :cond_9f
    invoke-virtual {p0, p1}, LaY/Y;->d(Lcom/google/googlenav/aV;)V

    goto :goto_8d

    :cond_a3
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->u()Z

    move-result v0

    if-nez v0, :cond_2a

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->D()Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->I()Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->L()Z

    move-result v0

    if-nez v0, :cond_c0

    invoke-virtual {p0, p1, v2}, LaY/Y;->a(Lcom/google/googlenav/aV;I)V

    goto/16 :goto_2a

    :cond_c0
    invoke-virtual {p0, p1, v3}, LaY/Y;->b(Lcom/google/googlenav/aV;Z)V

    goto/16 :goto_2a
.end method

.method public a(Lcom/google/googlenav/ah;)V
    .registers 4

    const-string v0, "locationMemory"

    invoke-static {v0}, Lau/y;->b(Ljava/lang/String;)Lau/y;

    move-result-object v0

    invoke-static {p1}, Lau/x;->b(Lcom/google/googlenav/ah;)Lau/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/y;->a(Lau/x;)Z

    return-void
.end method

.method protected a(Lcom/google/googlenav/layer/m;ZLaY/t;)V
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, LaY/Y;->a(Lcom/google/googlenav/layer/m;ZLaY/t;ZZ)V

    return-void
.end method

.method protected a(Lcom/google/googlenav/layer/m;ZLaY/t;ZZ)V
    .registers 11

    const/4 v0, 0x0

    const/4 v4, 0x6

    if-eqz p2, :cond_7

    invoke-direct {p0, v4, v0}, LaY/Y;->b(IZ)V

    :cond_7
    if-eqz p5, :cond_c

    invoke-direct {p0}, LaY/Y;->af()V

    :cond_c
    invoke-virtual {p0, v4}, LaY/Y;->b(I)V

    move v2, v0

    :goto_10
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4e

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    if-ne v1, v4, :cond_52

    move-object v1, v0

    check-cast v1, LaY/t;

    invoke-virtual {v1}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlenav/layer/m;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {p0, v0}, LaY/Y;->f(LaY/i;)V

    :cond_4e
    invoke-virtual {p0, p3, p4}, LaY/Y;->a(LaY/i;Z)V

    return-void

    :cond_52
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_10
.end method

.method public a(Lcom/google/googlenav/ui/C;)V
    .registers 5

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_19

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0, p1}, LaY/i;->b(Lcom/google/googlenav/ui/C;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_19
    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0, p1}, LaY/i;->e(Lcom/google/googlenav/ui/C;)V

    :goto_20
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_36

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0, p1}, LaY/i;->d(Lcom/google/googlenav/ui/C;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_36
    return-void
.end method

.method public a(Lcom/google/googlenav/ui/wizard/hM;LaY/az;)V
    .registers 5

    invoke-virtual {p2}, LaY/az;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_30

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    const-string v0, "100"

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Ljava/lang/String;)V

    goto :goto_7

    :pswitch_e
    invoke-virtual {p2}, LaY/az;->bh()Lau/b;

    move-result-object v0

    invoke-virtual {v0}, Lau/b;->z()I

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/hM;->a(Lau/b;)V

    goto :goto_7

    :cond_1c
    invoke-virtual {p1, v0}, Lcom/google/googlenav/ui/wizard/hM;->c(Lau/b;)V

    goto :goto_7

    :pswitch_20
    invoke-virtual {p1}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->v()Lcom/google/googlenav/ui/wizard/cA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cA;->l()V

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/cA;->o()V

    goto :goto_7

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_8
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_20
    .end packed-switch
.end method

.method public a(ZZZ)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p2}, LaY/Y;->h(Z)V

    if-eqz p1, :cond_f

    iget-object v2, p0, LaY/Y;->q:Ljava/util/Vector;

    monitor-enter v2

    :try_start_9
    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_2a

    :cond_f
    if-eqz p3, :cond_14

    invoke-virtual {p0}, LaY/Y;->V()V

    :cond_14
    iget-object v0, p0, LaY/Y;->e:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->a()LaJ/D;

    move-result-object v0

    invoke-virtual {v0}, LaJ/D;->l()V

    move v0, v1

    :goto_1e
    sget-object v2, LaY/Y;->t:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2d

    sget-object v2, LaY/Y;->u:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0

    :cond_2d
    return-void
.end method

.method public a(LaJ/B;LaJ/B;IIIIILah/e;)Z
    .registers 16

    const/4 v2, 0x0

    if-nez p2, :cond_4

    :goto_3
    return v2

    :cond_4
    iget-object v0, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v0}, LaJ/u;->d()LaJ/Y;

    move-result-object v0

    invoke-virtual {p1, v0}, LaJ/B;->a(LaJ/Y;)I

    move-result v1

    invoke-virtual {p2, v0}, LaJ/B;->a(LaJ/Y;)I

    move-result v3

    sub-int v4, v1, v3

    invoke-virtual {p1, v0}, LaJ/B;->b(LaJ/Y;)I

    move-result v1

    invoke-virtual {p2, v0}, LaJ/B;->b(LaJ/Y;)I

    move-result v0

    sub-int v5, v1, v0

    packed-switch p3, :pswitch_data_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Feature.ANCHOR_* type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3a
    div-int/lit8 v0, p4, 0x2

    neg-int v1, v0

    neg-int v0, p5

    :goto_3e
    invoke-static {}, Laf/b;->a()Laf/b;

    move-result-object v3

    invoke-virtual {v3}, Laf/b;->j()I

    move-result v3

    if-ge p4, v3, :cond_4e

    sub-int v6, v3, p4

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    move p4, v3

    :cond_4e
    if-ge p5, v3, :cond_56

    sub-int v6, v3, p5

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v0, v6

    move p5, v3

    :cond_56
    add-int v3, v1, p4

    add-int v6, v0, p5

    if-lt v4, v1, :cond_72

    if-gt v4, v3, :cond_72

    if-lt v5, v0, :cond_72

    if-gt v5, v6, :cond_72

    const/4 v0, 0x1

    :goto_63
    move v2, v0

    goto :goto_3

    :pswitch_65
    div-int/lit8 v0, p4, 0x2

    neg-int v1, v0

    div-int/lit8 v0, p5, 0x2

    neg-int v0, v0

    goto :goto_3e

    :pswitch_6c
    neg-int v1, p4

    neg-int v0, p5

    goto :goto_3e

    :pswitch_6f
    neg-int v1, p6

    neg-int v0, p7

    goto :goto_3e

    :cond_72
    move v0, v2

    goto :goto_63

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_65
        :pswitch_6c
        :pswitch_6f
    .end packed-switch
.end method

.method protected a(LaY/i;ZZ)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, LaY/i;->aU()Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return v2

    :cond_9
    invoke-virtual {p1}, LaY/i;->aD()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sget v1, LaY/Y;->a:I

    if-lt v0, v1, :cond_33

    move v1, v2

    :goto_1a
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_33

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->aD()Z

    move-result v4

    if-eqz v4, :cond_69

    invoke-virtual {p0, v0, v2, v3}, LaY/Y;->b(LaY/i;ZZ)V

    :cond_33
    if-eqz p2, :cond_6d

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_3a
    :goto_3a
    invoke-virtual {p1}, LaY/i;->aD()Z

    move-result v0

    if-eqz v0, :cond_47

    if-eqz p2, :cond_7c

    iget-object v0, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_47
    :goto_47
    invoke-virtual {p1}, LaY/i;->aD()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-direct {p0, p1}, LaY/Y;->n(LaY/i;)V

    :cond_50
    iget-object v0, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)V

    invoke-virtual {p0, p1}, LaY/Y;->h(LaY/i;)V

    if-eqz p3, :cond_67

    invoke-virtual {p1, v3}, LaY/i;->f(I)V

    invoke-virtual {p1}, LaY/i;->au()Z

    move-result v0

    if-eqz v0, :cond_67

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, LaY/i;->f(I)V

    :cond_67
    move v2, v3

    goto :goto_8

    :cond_69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1a

    :cond_6d
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    if-eqz v0, :cond_3a

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    invoke-interface {v0, p1}, LaY/ac;->a(LaY/i;)V

    goto :goto_3a

    :cond_7c
    iget-object v0, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_47
.end method

.method public a(Laq/a;)Z
    .registers 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/googlenav/ui/n;->Q:Laq/a;

    invoke-virtual {p1, v1}, Laq/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0, v0}, LaY/Y;->b(Z)V

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v0}, Lcom/google/googlenav/ui/D;->j(Z)V

    const/4 v0, 0x1

    :cond_12
    :goto_12
    return v0

    :cond_13
    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-virtual {v1, p1}, LaY/i;->a(Laq/a;)Z

    move-result v0

    goto :goto_12
.end method

.method public a(Laq/b;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v2}, LaY/i;->aa()Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_e
    invoke-virtual {p1}, Laq/b;->e()C

    move-result v3

    const/16 v4, 0x32

    if-ne v3, v4, :cond_1c

    iget-object v0, p0, LaY/Y;->o:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0, p0, v1}, Lcom/google/googlenav/ui/wizard/hM;->a(LaY/Y;Z)V

    :goto_1b
    return v1

    :cond_1c
    invoke-virtual {p1}, Laq/b;->e()C

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_2f

    iget-object v2, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/D;->j()LaY/aT;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, LaY/aT;->e(ILjava/lang/Object;)V

    goto :goto_1b

    :cond_2f
    if-eqz v2, :cond_38

    invoke-virtual {v2, p1}, LaY/i;->a(Laq/b;)Z

    move-result v2

    if-eqz v2, :cond_38

    move v0, v1

    :cond_38
    invoke-virtual {p1}, Laq/b;->c()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4e

    if-nez v0, :cond_4e

    invoke-virtual {p0}, LaY/Y;->w()LaY/bh;

    move-result-object v2

    if-eqz v2, :cond_4e

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->J()V

    move v0, v1

    :cond_4e
    move v1, v0

    goto :goto_1b
.end method

.method public a(Laq/c;)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->E()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-virtual {p0}, LaY/Y;->l()LaY/ae;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, LaY/Y;->l()LaY/ae;

    move-result-object v0

    invoke-virtual {v0, p1}, LaY/ae;->a(Laq/c;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_1a
    :goto_1a
    return v2

    :cond_1b
    invoke-virtual {p1}, Laq/c;->h()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Laq/c;->f()Z

    move-result v0

    if-eqz v0, :cond_6c

    :cond_27
    iget-object v0, p0, LaY/Y;->e:LaJ/p;

    invoke-virtual {p1}, Laq/c;->k()I

    move-result v3

    invoke-virtual {p1}, Laq/c;->l()I

    move-result v4

    invoke-virtual {v0, v3, v4}, LaJ/p;->b(II)LaJ/B;

    move-result-object v3

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    iget-boolean v4, p0, LaY/Y;->N:Z

    if-nez v4, :cond_45

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, LaY/i;->aj()Z

    move-result v0

    if-nez v0, :cond_7a

    :cond_45
    move v0, v2

    :goto_46
    if-nez v0, :cond_5f

    iget-object v0, p0, LaY/Y;->O:LaJ/B;

    if-eqz v0, :cond_5f

    iget-object v0, p0, LaY/Y;->O:LaJ/B;

    iget-object v4, p0, LaY/Y;->e:LaJ/p;

    invoke-virtual {v4}, LaJ/p;->c()LaJ/Y;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, LaJ/B;->a(LaJ/B;LaJ/Y;)J

    move-result-wide v4

    sget v0, LaY/Y;->K:I

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_7c

    :cond_5f
    invoke-virtual {p0, v1}, LaY/Y;->e(Z)V

    invoke-virtual {p0, v3}, LaY/Y;->b(LaJ/B;)V

    move v0, v2

    :goto_66
    invoke-virtual {p0, v0}, LaY/Y;->c(Z)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_6c
    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_78

    invoke-virtual {v0, p1}, LaY/i;->a(Laq/c;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_78
    move v2, v1

    goto :goto_1a

    :cond_7a
    move v0, v1

    goto :goto_46

    :cond_7c
    invoke-virtual {p0, v3}, LaY/Y;->c(LaJ/B;)V

    move v0, v1

    goto :goto_66
.end method

.method public a(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "PROTO_SAVED_LAYER_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->az()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public aa()V
    .registers 2

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/Y;->c(LaY/i;)V

    if-eqz v0, :cond_c

    invoke-virtual {v0}, LaY/i;->aX()V

    :cond_c
    return-void
.end method

.method public ab()I
    .registers 2

    iget v0, p0, LaY/Y;->B:I

    return v0
.end method

.method public ac()LaY/a;
    .registers 2

    iget-object v0, p0, LaY/Y;->G:LaY/a;

    return-object v0
.end method

.method public ad()LaX/a;
    .registers 2

    iget-object v0, p0, LaY/Y;->H:LaX/a;

    return-object v0
.end method

.method public ae()LaY/ac;
    .registers 2

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    return-object v0
.end method

.method public b(Lau/b;)LaY/G;
    .registers 5

    invoke-virtual {p0}, LaY/Y;->v()LaY/G;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, LaY/G;->ae()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_c
    invoke-virtual {p0, p1}, LaY/Y;->a(Lau/b;)LaY/G;

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    iget-object v1, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v1, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, LaY/Y;->g(LaY/i;)V

    invoke-virtual {v0, p1}, LaY/G;->b(Lcom/google/googlenav/E;)V

    invoke-virtual {v0}, LaY/G;->J()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, LaY/Y;->a(LaY/i;ZZ)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, LaY/G;->aO()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-static {}, LaY/Y;->Z()I

    move-result v1

    invoke-virtual {v0, v1}, LaY/G;->e(I)V

    invoke-direct {p0, v0}, LaY/Y;->b(LaY/i;)V

    :cond_3c
    invoke-virtual {p0}, LaY/Y;->d()V

    goto :goto_10
.end method

.method public b(Lcom/google/googlenav/aV;)LaY/aG;
    .registers 11

    new-instance v5, Lcom/google/googlenav/n;

    new-instance v0, Lcom/google/googlenav/Q;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v1

    iget-object v2, p0, LaY/Y;->h:LaJ/k;

    iget-object v3, p0, LaY/Y;->e:LaJ/p;

    iget-object v4, p0, LaY/Y;->f:LaJ/u;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    invoke-direct {v5, p1, v0}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V

    invoke-static {}, LaY/Y;->Y()I

    move-result v8

    new-instance v0, LaY/aG;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v6

    iget-object v7, p0, LaY/Y;->h:LaJ/k;

    invoke-direct/range {v0 .. v8}, LaY/aG;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/n;Lcom/google/googlenav/layer/m;LaJ/k;I)V

    return-object v0
.end method

.method protected b(Lcom/google/googlenav/layer/m;)LaY/t;
    .registers 9

    new-instance v0, LaY/t;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v6, p0, LaY/Y;->h:LaJ/k;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaY/t;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    return-object v0
.end method

.method public b(Lcom/google/googlenav/layer/m;Z)LaY/t;
    .registers 10

    new-instance v0, LaY/aV;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v6, p0, LaY/Y;->h:LaJ/k;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, LaY/aV;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    invoke-virtual {p0, p1, p2, v0}, LaY/Y;->a(Lcom/google/googlenav/layer/m;ZLaY/t;)V

    return-object v0
.end method

.method public b()V
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, LaY/Y;->V()V

    iget-object v0, p0, LaY/Y;->e:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->a()LaJ/D;

    move-result-object v0

    invoke-virtual {v0}, LaJ/D;->l()V

    move v0, v1

    :goto_e
    sget-object v2, LaY/Y;->t:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    sget-object v2, LaY/Y;->u:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1a
    return-void
.end method

.method protected b(I)V
    .registers 6

    const/4 v3, 0x1

    invoke-static {p1}, LaY/Y;->c(I)I

    move-result v0

    invoke-direct {p0, p1}, LaY/Y;->f(I)I

    move-result v1

    if-lt v1, v0, :cond_26

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_26

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v2

    if-ne v2, p1, :cond_27

    invoke-virtual {p0, v0, v3, v3}, LaY/Y;->b(LaY/i;ZZ)V

    :cond_26
    return-void

    :cond_27
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d
.end method

.method protected b(LaJ/B;)V
    .registers 6

    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput-object p1, p0, LaY/Y;->O:LaJ/B;

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_10
    if-ltz v1, :cond_25

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    iget-object v2, p0, LaY/Y;->M:Ljava/util/Vector;

    sget v3, LaY/Y;->K:I

    invoke-virtual {v0, v2, p1, v3}, LaY/i;->a(Ljava/util/Vector;LaJ/B;I)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_10

    :cond_25
    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v1, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v1}, LaJ/u;->d()LaJ/Y;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, LaJ/B;->a(LaJ/B;LaJ/Y;)J

    move-result-wide v0

    sget v2, LaY/Y;->K:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_47

    iget-object v2, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-static {v0, v1}, LaY/U;->a(J)LaY/U;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_47
    return-void
.end method

.method protected b(LaY/i;ZZ)V
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v2}, LaY/i;->g(Z)V

    invoke-virtual {p1}, LaY/i;->aZ()V

    invoke-virtual {p1}, LaY/i;->aW()V

    iget-object v1, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v1, p0, LaY/Y;->p:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, LaY/Y;->g(LaY/i;)V

    if-eqz v0, :cond_30

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_30

    if-eqz p2, :cond_30

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->aY()V

    :cond_30
    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3a

    invoke-virtual {p0, v2}, LaY/Y;->g(Z)V

    :cond_3a
    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    if-eqz v0, :cond_51

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->a()Lcom/google/googlenav/ui/aA;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aA;->a:Lcom/google/googlenav/ui/aA;

    if-eq v0, v1, :cond_51

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    invoke-interface {v0, p1}, LaY/ac;->a(LaY/i;)V

    :cond_51
    invoke-direct {p0, p1}, LaY/Y;->a(LaY/i;)V

    invoke-virtual {p1}, LaY/i;->aO()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    if-eqz p3, :cond_6d

    invoke-virtual {p1}, LaY/i;->aP()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-direct {p0, p1}, LaY/Y;->b(LaY/i;)V

    :cond_6d
    :goto_6d
    invoke-virtual {p0, p1}, LaY/Y;->i(LaY/i;)V

    if-eqz p3, :cond_76

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, LaY/i;->f(I)V

    :cond_76
    return-void

    :cond_77
    invoke-direct {p0, p1}, LaY/Y;->m(LaY/i;)V

    goto :goto_6d
.end method

.method public b(Lcom/google/googlenav/L;LaY/az;)V
    .registers 5

    invoke-virtual {p2}, LaY/az;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    invoke-virtual {p0, p1, p2}, LaY/Y;->a(Lcom/google/googlenav/L;LaY/az;)V

    goto :goto_7

    :pswitch_c
    iget-object v0, p0, LaY/Y;->o:Lcom/google/googlenav/ui/wizard/hM;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hM;->N()Lcom/google/googlenav/ui/wizard/hS;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/wizard/hS;->i()Lcom/google/googlenav/ui/wizard/bu;

    move-result-object v0

    invoke-virtual {p2}, LaY/az;->bh()Lau/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/ui/wizard/bu;->c(Lau/b;)V

    goto :goto_7

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_8
        :pswitch_c
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public b(Lcom/google/googlenav/aV;Z)V
    .registers 10

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ad()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->l()Lcom/google/googlenav/aX;

    move-result-object v0

    check-cast v0, LaY/aG;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, LaY/aG;->az()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0}, LaY/aG;->ae()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, p1, p2}, LaY/aG;->b(Lcom/google/googlenav/aV;Z)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string v0, "20"

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->V()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->F()Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->l()Lcom/google/googlenav/aX;

    move-result-object v0

    instance-of v0, v0, LaY/aG;

    if-eqz v0, :cond_8d

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->l()Lcom/google/googlenav/aX;

    move-result-object v0

    check-cast v0, LaY/aG;

    invoke-virtual {v0}, LaY/aG;->az()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {v0}, LaY/aG;->ae()Z

    move-result v1

    if-eqz v1, :cond_64

    new-instance v1, Lcom/google/googlenav/n;

    new-instance v2, Lcom/google/googlenav/Q;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v3

    iget-object v4, p0, LaY/Y;->h:LaJ/k;

    iget-object v5, p0, LaY/Y;->e:LaJ/p;

    iget-object v6, p0, LaY/Y;->f:LaJ/u;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    invoke-direct {v1, p1, v2}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V

    invoke-virtual {v0, v1}, LaY/aG;->c(Lcom/google/googlenav/E;)V

    goto :goto_1f

    :cond_64
    invoke-virtual {v0}, LaY/aG;->af()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->U()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_8d

    invoke-virtual {v0}, LaY/aG;->o()V

    new-instance v1, Lcom/google/googlenav/n;

    new-instance v2, Lcom/google/googlenav/Q;

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->aa()Lcom/google/googlenav/layer/m;

    move-result-object v3

    iget-object v4, p0, LaY/Y;->h:LaJ/k;

    iget-object v5, p0, LaY/Y;->e:LaJ/p;

    iget-object v6, p0, LaY/Y;->f:LaJ/u;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/googlenav/Q;-><init>(Lcom/google/googlenav/layer/m;LaJ/o;LaJ/p;LaJ/u;)V

    invoke-direct {v1, p1, v2}, Lcom/google/googlenav/n;-><init>(Lcom/google/googlenav/E;Lcom/google/googlenav/E;)V

    invoke-virtual {v0, v1}, LaY/aG;->c(Lcom/google/googlenav/E;)V

    goto :goto_1f

    :cond_8d
    move v2, v3

    :goto_8e
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_de

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    if-nez v1, :cond_143

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, LaY/i;->aM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    move-object v1, v0

    check-cast v1, LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    :cond_db
    invoke-virtual {p0, v0}, LaY/Y;->f(LaY/i;)V

    :cond_de
    move v2, v3

    :goto_df
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_107

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    if-nez v1, :cond_148

    move-object v1, v0

    check-cast v1, LaY/aG;

    invoke-virtual {v1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ac()Z

    move-result v1

    if-eqz v1, :cond_148

    check-cast v0, LaY/aG;

    invoke-virtual {v0, v3}, LaY/aG;->i(I)V

    :cond_107
    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ab()Z

    move-result v0

    if-eqz v0, :cond_110

    invoke-direct {p0}, LaY/Y;->am()V

    :cond_110
    iget-boolean v0, p0, LaY/Y;->s:Z

    if-nez v0, :cond_14c

    move v0, v4

    :goto_115
    invoke-virtual {p0, p1, v0}, LaY/Y;->a(Lcom/google/googlenav/aV;Z)LaY/aG;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, LaY/aG;->b(Lcom/google/googlenav/aV;Z)V

    iget-boolean v1, p0, LaY/Y;->s:Z

    if-nez v1, :cond_126

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ac()Z

    move-result v1

    if-eqz v1, :cond_129

    :cond_126
    invoke-virtual {v0, v4}, LaY/aG;->g(Z)V

    :cond_129
    invoke-virtual {p0, v3}, LaY/Y;->f(Z)V

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->ab()Z

    move-result v0

    if-nez v0, :cond_13c

    invoke-virtual {p1}, Lcom/google/googlenav/aV;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_13c
    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->y()V

    goto/16 :goto_1f

    :cond_143
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_8e

    :cond_148
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_df

    :cond_14c
    move v0, v3

    goto :goto_115
.end method

.method public b(Lcom/google/googlenav/ui/C;)V
    .registers 4

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0, p1}, LaY/i;->a(Lcom/google/googlenav/ui/C;)V

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/ui/D;->C()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, LaY/i;->ai()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, LaY/Y;->y()LaY/aT;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, LaY/Y;->D:Ljava/lang/String;

    if-eqz v1, :cond_26

    iget-object v1, p0, LaY/Y;->D:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, LaY/aT;->a(Lcom/google/googlenav/ui/C;Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public b(Z)V
    .registers 9

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/D;->a(I)Z

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/D;->b_(Z)V

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0, v2, v2}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    :goto_16
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_59

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->aD()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_40

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, LaY/Y;->W()V

    :cond_38
    :goto_38
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_16

    :cond_3c
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_40
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_44
    invoke-virtual {v0}, LaY/i;->aj()Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_55

    invoke-virtual {v0}, LaY/i;->am()V

    goto :goto_38

    :cond_55
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    :cond_59
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {p0, v0, v6, v6}, LaY/Y;->b(LaY/i;ZZ)V

    goto :goto_5d

    :cond_6d
    sget-object v0, LaB/e;->a:LaB/e;

    invoke-virtual {v0}, LaB/e;->e()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, LaY/Y;->l()LaY/ae;

    move-result-object v0

    if-eqz v0, :cond_82

    invoke-virtual {p0}, LaY/Y;->l()LaY/ae;

    move-result-object v0

    invoke-virtual {v0, v2}, LaY/ae;->i(Z)V

    :cond_82
    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_97

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_97

    invoke-virtual {p0}, LaY/Y;->p()V

    :cond_97
    iget-object v0, p0, LaY/Y;->e:LaJ/p;

    invoke-virtual {v0}, LaJ/p;->a()LaJ/D;

    move-result-object v0

    invoke-virtual {v0}, LaJ/D;->l()V

    move v0, v2

    :goto_a1
    sget-object v1, LaY/Y;->t:[I

    array-length v1, v1

    if-ge v0, v1, :cond_ad

    sget-object v1, LaY/Y;->u:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a1

    :cond_ad
    invoke-virtual {p0}, LaY/Y;->d()V

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    if-eqz v0, :cond_c8

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->I()Lcom/google/googlenav/ui/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/ui/av;->a()Lcom/google/googlenav/ui/aA;

    move-result-object v0

    sget-object v1, Lcom/google/googlenav/ui/aA;->a:Lcom/google/googlenav/ui/aA;

    if-eq v0, v1, :cond_c8

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, LaY/ac;->a(LaY/i;)V

    :cond_c8
    return-void
.end method

.method public b(Laq/b;)Z
    .registers 3

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, LaY/i;->b(Laq/b;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public b(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1}, LaY/Y;->c(Ljava/lang/String;)LaY/i;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public c(Lcom/google/googlenav/aV;)LaY/K;
    .registers 14

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LaY/Y;->b(I)V

    new-instance v0, LaY/K;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->n:Lcom/google/googlenav/android/ac;

    iget-object v5, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v6, p0, LaY/Y;->l:Lax/bD;

    iget-object v7, p0, LaY/Y;->m:Lax/r;

    iget-object v8, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    iget-object v10, p0, LaY/Y;->G:LaY/a;

    iget-object v11, p0, LaY/Y;->H:LaX/a;

    move-object v9, p1

    invoke-direct/range {v0 .. v11}, LaY/K;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/android/ac;Lcom/google/googlenav/ui/af;Lax/bD;Lax/r;Lcom/google/googlenav/ui/at;Lcom/google/googlenav/E;LaY/a;LaX/a;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    invoke-virtual {p0, v0}, LaY/Y;->a(LaY/K;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;)LaY/i;
    .registers 6

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2f

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_2b

    move-object v1, v0

    check-cast v1, LaY/t;

    invoke-virtual {v1}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    :goto_2a
    return-object v0

    :cond_2b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2a
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method protected c(LaJ/B;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6d

    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/U;

    invoke-virtual {v0}, LaY/U;->f()Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v3}, LaJ/u;->d()LaJ/Y;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, LaJ/B;->a(LaJ/B;LaJ/Y;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, LaY/U;->b(J)V

    :goto_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_31
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, LaY/U;->b(J)V

    goto :goto_2d

    :cond_3a
    invoke-virtual {v0}, LaY/U;->a()LaY/i;

    move-result-object v4

    invoke-virtual {v0}, LaY/U;->b()Lcom/google/googlenav/D;

    move-result-object v2

    invoke-virtual {v4, v2, p1}, LaY/i;->a(Lcom/google/googlenav/D;LaJ/B;)J

    move-result-wide v2

    invoke-virtual {v4}, LaY/i;->az()Z

    move-result v5

    if-nez v5, :cond_50

    sget v5, LaY/Y;->k:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    :cond_50
    invoke-virtual {v4}, LaY/i;->ax()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5b

    sget v5, LaY/Y;->k:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    :cond_5b
    invoke-virtual {v4}, LaY/i;->ax()I

    move-result v4

    const/16 v5, 0x10

    if-ne v4, v5, :cond_69

    sget v4, LaY/Y;->k:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    add-long/2addr v2, v4

    :cond_69
    invoke-virtual {v0, v2, v3}, LaY/U;->b(J)V

    goto :goto_2d

    :cond_6d
    return-void
.end method

.method public c(LaY/i;)V
    .registers 4

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {v0}, LaY/i;->aZ()V

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/af;->b(Lcom/google/googlenav/ui/ag;)V

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/af;->a(Lcom/google/googlenav/ui/ag;)V

    invoke-virtual {p1}, LaY/i;->aY()V

    invoke-virtual {p0}, LaY/Y;->d()V

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    if-eqz v0, :cond_32

    iget-object v0, p0, LaY/Y;->S:LaY/ac;

    invoke-interface {v0, p1}, LaY/ac;->a(LaY/i;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    invoke-virtual {v0}, LaY/i;->az()Z

    move-result v1

    if-nez v1, :cond_32

    invoke-virtual {v0}, LaY/i;->aY()V

    goto :goto_32
.end method

.method public c(Lau/b;)V
    .registers 4

    invoke-virtual {p0, p1}, LaY/Y;->a(Lcom/google/googlenav/E;)LaY/az;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, LaY/az;->a(Lau/b;I)V

    return-void
.end method

.method protected c(Z)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, LaY/Y;->P:I

    invoke-virtual {p0}, LaY/Y;->C()I

    move-result v3

    iput v3, p0, LaY/Y;->P:I

    iget v3, p0, LaY/Y;->P:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_49

    if-nez p1, :cond_15

    iget v3, p0, LaY/Y;->P:I

    if-eq v0, v3, :cond_3b

    :cond_15
    iget-object v0, p0, LaY/Y;->M:Ljava/util/Vector;

    iget v3, p0, LaY/Y;->P:I

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/U;

    invoke-virtual {v0, v2}, LaY/U;->a(Z)V

    invoke-virtual {v0}, LaY/U;->f()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {p0}, LaY/Y;->f()LaY/x;

    move-result-object v0

    if-nez v0, :cond_30

    move v0, v1

    :goto_2f
    return v0

    :cond_30
    invoke-virtual {v0}, LaY/x;->as()Lcom/google/googlenav/E;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/googlenav/E;->c()I

    move-result v1

    invoke-virtual {p0, v0, v1}, LaY/Y;->a(LaY/i;I)V

    :cond_3b
    :goto_3b
    move v0, v2

    goto :goto_2f

    :cond_3d
    invoke-virtual {v0}, LaY/U;->a()LaY/i;

    move-result-object v1

    invoke-virtual {v0}, LaY/U;->c()I

    move-result v0

    invoke-virtual {p0, v1, v0}, LaY/Y;->a(LaY/i;I)V

    goto :goto_3b

    :cond_49
    move v0, v1

    goto :goto_2f
.end method

.method protected d()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, LaY/Y;->z:Z

    iget-object v0, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-interface {v0}, Lcom/google/googlenav/ui/af;->e()V

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->X()V

    return-void
.end method

.method public d(I)V
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    move v1, v2

    :goto_6
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v4

    if-ne v4, p1, :cond_25

    invoke-virtual {v0}, LaY/i;->aF()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_29
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, LaY/Y;->b(LaY/i;ZZ)V

    invoke-direct {p0, v0}, LaY/Y;->n(LaY/i;)V

    goto :goto_2d

    :cond_41
    invoke-virtual {p0}, LaY/Y;->d()V

    return-void
.end method

.method public d(LaY/i;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, LaY/Y;->a(LaY/i;ZLam/b;)V

    return-void
.end method

.method public d(Lcom/google/googlenav/aV;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, LaY/Y;->G:LaY/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2, v2}, LaY/a;->a(ILcom/google/googlenav/E;Lcom/google/googlenav/android/ac;LaY/g;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, LaY/Y;->D:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .registers 4

    invoke-virtual {p0}, LaY/Y;->I()LaY/i;

    move-result-object v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_16

    invoke-virtual {v0}, LaY/i;->aj()Z

    move-result v1

    iput-boolean v1, p0, LaY/Y;->Q:Z

    iget-boolean v1, p0, LaY/Y;->Q:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, LaY/i;->am()V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-boolean v1, p0, LaY/Y;->Q:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, LaY/i;->ao()Z

    goto :goto_15
.end method

.method public e()V
    .registers 3

    const/4 v1, 0x0

    const/16 v0, 0x12

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    return-void
.end method

.method public e(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, LaY/Y;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public e(LaY/i;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v1

    invoke-virtual {p0, v1}, LaY/Y;->b(I)V

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v1

    sparse-switch v1, :sswitch_data_b8

    :goto_10
    return-void

    :sswitch_11
    invoke-virtual {p0, v5}, LaY/Y;->f(Z)V

    check-cast p1, LaY/aG;

    invoke-virtual {p1}, LaY/aG;->bL()Lcom/google/googlenav/aV;

    move-result-object v1

    new-instance v2, Lcom/google/googlenav/aV;

    new-instance v3, Lcom/google/googlenav/bc;

    invoke-direct {v3}, Lcom/google/googlenav/bc;-><init>()V

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->y()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bc;->a(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->x()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bc;->a(I)Lcom/google/googlenav/bc;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->U()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bc;->b(I)Lcom/google/googlenav/bc;

    move-result-object v3

    const-string v4, "13"

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bc;->b(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->A()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bc;->c(Ljava/lang/String;)Lcom/google/googlenav/bc;

    move-result-object v3

    iget-object v4, p0, LaY/Y;->f:LaJ/u;

    invoke-virtual {v4}, LaJ/u;->f()LaJ/H;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlenav/bc;->a(LaJ/H;)Lcom/google/googlenav/bc;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/google/googlenav/bc;->f(Z)Lcom/google/googlenav/bc;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/bc;->a()Lcom/google/googlenav/bb;

    move-result-object v3

    iget-object v4, p0, LaY/Y;->f:LaJ/u;

    invoke-direct {v2, v3, v4}, Lcom/google/googlenav/aV;-><init>(Lcom/google/googlenav/bb;LaJ/u;)V

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->L()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aV;->a(Z)V

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->aJ()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/googlenav/aV;->c(Z)V

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ap()Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/D;->av()Lcom/google/googlenav/ui/wizard/x;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlenav/ui/wizard/x;->a()V

    :cond_7b
    iget-object v3, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1}, Lcom/google/googlenav/aV;->ap()Z

    move-result v1

    if-eqz v1, :cond_87

    :goto_83
    invoke-virtual {v3, v2, v0, v5}, Lcom/google/googlenav/ui/D;->a(Lcom/google/googlenav/aV;IZ)V

    goto :goto_10

    :cond_87
    const/4 v0, 0x6

    goto :goto_83

    :sswitch_89
    invoke-virtual {p0, p1}, LaY/Y;->d(LaY/i;)V

    invoke-virtual {p1, v5}, LaY/i;->g(Z)V

    goto :goto_10

    :sswitch_90
    check-cast p1, LaY/t;

    invoke-virtual {p1}, LaY/t;->b()Lcom/google/googlenav/layer/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/googlenav/layer/m;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "msid:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ab

    invoke-virtual {p0, v1, v0}, LaY/Y;->b(Lcom/google/googlenav/layer/m;Z)LaY/t;

    move-result-object v0

    :goto_a6
    invoke-virtual {v0, v5}, LaY/t;->g(Z)V

    goto/16 :goto_10

    :cond_ab
    invoke-virtual {p0, v1, v0}, LaY/Y;->a(Lcom/google/googlenav/layer/m;Z)LaY/t;

    move-result-object v0

    goto :goto_a6

    :sswitch_b0
    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v1, v5, v0}, Lcom/google/googlenav/ui/D;->a(ZZ)V

    goto/16 :goto_10

    nop

    :sswitch_data_b8
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_89
        0x3 -> :sswitch_89
        0x6 -> :sswitch_90
        0x7 -> :sswitch_b0
        0x15 -> :sswitch_89
    .end sparse-switch
.end method

.method protected e(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/Y;->N:Z

    return-void
.end method

.method protected f()LaY/x;
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->j()LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->a()Lt/y;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v0, p0, LaY/Y;->i:Lcom/google/googlenav/ui/at;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/at;->f()[Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, LaY/Y;->a(LaJ/B;Lt/y;Ljava/lang/String;Z[Ljava/lang/String;)LaY/x;

    move-result-object v3

    :cond_1b
    return-object v3
.end method

.method public f(LaY/i;)V
    .registers 3

    const/4 v0, 0x1

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0, p1, v0, v0}, LaY/Y;->b(LaY/i;ZZ)V

    invoke-virtual {p0}, LaY/Y;->d()V

    const-string v0, "h"

    invoke-direct {p0, p1, v0}, LaY/Y;->a(LaY/i;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public f(Z)V
    .registers 2

    iput-boolean p1, p0, LaY/Y;->s:Z

    return-void
.end method

.method public g()Lar/k;
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_a
    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->g()Lar/k;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_25
    new-instance v0, Lar/k;

    const-string v1, "visible layers"

    invoke-direct {v0, v1, v2, v4}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LK/bR;->a()Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, LaY/Y;->q:Ljava/util/Vector;

    monitor-enter v5

    move v1, v2

    :goto_37
    :try_start_37
    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_52

    iget-object v0, p0, LaY/Y;->q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->g()Lar/k;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_37

    :cond_52
    monitor-exit v5
    :try_end_53
    .catchall {:try_start_37 .. :try_end_53} :catchall_65

    new-instance v0, Lar/k;

    const-string v1, "recent layers"

    invoke-direct {v0, v1, v2, v4}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lar/k;

    const-string v1, "LayerManager"

    invoke-direct {v0, v1, v2, v3}, Lar/k;-><init>(Ljava/lang/String;ILjava/util/List;)V

    return-object v0

    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v5
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v0
.end method

.method protected g(LaY/i;)V
    .registers 3

    iget-object v0, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-interface {v0, p1}, Lcom/google/googlenav/ui/af;->b(Lcom/google/googlenav/ui/ag;)V

    return-void
.end method

.method public g(Z)V
    .registers 2

    sput-boolean p1, LaY/Y;->v:Z

    return-void
.end method

.method public h()V
    .registers 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, LaY/Y;->b(IZ)V

    invoke-direct {p0, v1, v0}, LaY/Y;->b(IZ)V

    invoke-direct {p0}, LaY/Y;->af()V

    invoke-virtual {p0, v1}, LaY/Y;->b(I)V

    return-void
.end method

.method protected h(LaY/i;)V
    .registers 7

    iget-object v2, p0, LaY/Y;->I:Ljava/util/Map;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, LaY/Y;->I:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ad;

    iget-object v1, p0, LaY/Y;->I:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/a;

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v4

    invoke-virtual {v1, v4}, Lz/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0, p1}, LaY/ad;->a(LaY/i;)V

    goto :goto_d

    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    return-void
.end method

.method public i()V
    .registers 4

    const/16 v2, 0x15

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, LaY/Y;->b(IZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    invoke-direct {p0, v2, v1}, LaY/Y;->b(IZ)V

    invoke-direct {p0}, LaY/Y;->af()V

    invoke-virtual {p0, v2}, LaY/Y;->b(I)V

    return-void
.end method

.method protected i(LaY/i;)V
    .registers 7

    iget-object v2, p0, LaY/Y;->I:Ljava/util/Map;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, LaY/Y;->I:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ad;

    iget-object v1, p0, LaY/Y;->I:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/a;

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v4

    invoke-virtual {v1, v4}, Lz/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0, p1}, LaY/ad;->b(LaY/i;)V

    goto :goto_d

    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    return-void
.end method

.method public j()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1}, LaY/Y;->b(IZ)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    const/16 v0, 0x17

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    const/16 v0, 0x18

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    invoke-direct {p0}, LaY/Y;->af()V

    return-void
.end method

.method protected j(LaY/i;)V
    .registers 7

    iget-object v2, p0, LaY/Y;->I:Ljava/util/Map;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, LaY/Y;->I:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/ad;

    iget-object v1, p0, LaY/Y;->I:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lz/a;

    invoke-virtual {p1}, LaY/i;->ax()I

    move-result v4

    invoke-virtual {v1, v4}, Lz/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0, p1}, LaY/ad;->c(LaY/i;)V

    goto :goto_d

    :catchall_2f
    move-exception v0

    monitor-exit v2
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_2f

    return-void
.end method

.method public k()LaY/ae;
    .registers 6

    const/4 v1, 0x0

    const/16 v0, 0x13

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    new-instance v0, LaY/ae;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-direct {v0, v1, v2, v3, v4}, LaY/ae;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method public l()LaY/ae;
    .registers 2

    const/16 v0, 0x13

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/ae;

    return-object v0
.end method

.method public l(LaY/i;)V
    .registers 3

    iget-object v0, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-interface {v0}, Lcom/google/googlenav/ui/af;->e()V

    return-void
.end method

.method public m()V
    .registers 3

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    return-void
.end method

.method public n()V
    .registers 3

    iget-object v0, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/D;->l()LaR/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, LaR/i;->c(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    :goto_17
    return-void

    :cond_18
    invoke-virtual {p0}, LaY/Y;->o()LaY/al;

    move-result-object v0

    invoke-direct {p0}, LaY/Y;->ag()LaY/an;

    move-result-object v1

    invoke-virtual {v0, v1}, LaY/al;->a(Lcom/google/googlenav/E;)V

    goto :goto_17
.end method

.method public o()LaY/al;
    .registers 2

    const/16 v0, 0x16

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/al;

    return-object v0
.end method

.method public p()V
    .registers 3

    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    return-void
.end method

.method public q()LaY/ba;
    .registers 3

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/f;->c()Lcom/google/googlenav/layer/m;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/googlenav/layer/m;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/m;-><init>(Ljava/lang/String;)V

    :cond_11
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, LaY/Y;->b(I)V

    invoke-virtual {p0, v0}, LaY/Y;->a(Lcom/google/googlenav/layer/m;)LaY/ba;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaY/Y;->a(LaY/i;Z)V

    return-object v0
.end method

.method public r()V
    .registers 2

    invoke-virtual {p0}, LaY/Y;->z()LaY/ba;

    move-result-object v0

    invoke-virtual {p0, v0}, LaY/Y;->f(LaY/i;)V

    return-void
.end method

.method public s()V
    .registers 9

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LaY/Y;->b(IZ)V

    invoke-static {}, Lcom/google/googlenav/layer/f;->a()Lcom/google/googlenav/layer/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/layer/f;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/googlenav/layer/m;

    new-instance v0, LaY/y;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    iget-object v6, p0, LaY/Y;->h:LaJ/k;

    invoke-direct/range {v0 .. v6}, LaY/y;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;Lcom/google/googlenav/layer/m;LaJ/k;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, LaY/Y;->a(LaY/i;Z)V

    goto :goto_12

    :cond_32
    return-void
.end method

.method public t()LaY/aS;
    .registers 6

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, LaY/Y;->b(I)V

    new-instance v0, LaY/aS;

    iget-object v1, p0, LaY/Y;->c:Lcom/google/googlenav/ui/D;

    iget-object v2, p0, LaY/Y;->e:LaJ/p;

    iget-object v3, p0, LaY/Y;->f:LaJ/u;

    iget-object v4, p0, LaY/Y;->g:Lcom/google/googlenav/ui/af;

    invoke-direct {v0, v1, v2, v3, v4}, LaY/aS;-><init>(Lcom/google/googlenav/ui/D;LaJ/p;LaJ/u;Lcom/google/googlenav/ui/af;)V

    invoke-virtual {p0, v0}, LaY/Y;->d(LaY/i;)V

    return-object v0
.end method

.method public u()LaY/aG;
    .registers 3

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_26

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/i;

    invoke-virtual {v0}, LaY/i;->ax()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, LaY/Y;->j:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LaY/aG;

    :goto_21
    return-object v0

    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_26
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public v()LaY/G;
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/G;

    return-object v0
.end method

.method public w()LaY/bh;
    .registers 2

    const/16 v0, 0x15

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/bh;

    return-object v0
.end method

.method public x()LaY/br;
    .registers 2

    const/16 v0, 0x17

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/br;

    return-object v0
.end method

.method public y()LaY/aT;
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/aT;

    return-object v0
.end method

.method public z()LaY/ba;
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, LaY/Y;->g(I)LaY/i;

    move-result-object v0

    check-cast v0, LaY/ba;

    return-object v0
.end method
