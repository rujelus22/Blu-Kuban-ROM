.class public abstract Lau/b;
.super Lat/a;

# interfaces
.implements Lau/k;
.implements Lcom/google/googlenav/E;


# static fields
.field public static final d:LaJ/Y;

.field private static final m:Ljava/lang/Object;

.field private static n:I

.field private static final q:Lar/u;

.field private static final r:Lar/u;


# instance fields
.field private A:Lau/x;

.field private B:Lau/x;

.field private C:Lam/b;

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field private I:I

.field private J:Z

.field private K:I

.field private L:I

.field private M:B

.field private N:I

.field private O:I

.field private P:[Lam/b;

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:Z

.field private U:Ljava/lang/String;

.field private V:I

.field private W:Lau/e;

.field protected a:Ljava/lang/String;

.field protected b:I

.field protected c:I

.field e:Lcom/google/googlenav/ui/x;

.field protected f:Lam/b;

.field protected g:I

.field protected h:[Lau/h;

.field i:[Lau/d;

.field j:[Lam/b;

.field protected k:I

.field protected l:[I

.field private final o:I

.field private p:I

.field private s:Z

.field private t:Lau/l;

.field private u:Lau/x;

.field private v:Z

.field private w:[Lau/x;

.field private x:Lau/x;

.field private y:Z

.field private z:[Lau/x;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v3, 0x16

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lau/b;->m:Ljava/lang/Object;

    const/4 v0, 0x1

    sput v0, Lau/b;->n:I

    new-instance v0, Lar/u;

    const-string v1, "directions"

    const-string v2, "r"

    invoke-direct {v0, v1, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lau/b;->q:Lar/u;

    new-instance v0, Lar/u;

    const-string v1, "directions time update"

    const-string v2, "T"

    invoke-direct {v0, v1, v2, v3}, Lar/u;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lau/b;->r:Lar/u;

    const/16 v0, 0xf

    invoke-static {v0}, LaJ/Y;->b(I)LaJ/Y;

    move-result-object v0

    sput-object v0, Lau/b;->d:LaJ/Y;

    return-void
.end method

.method protected constructor <init>(Lau/k;Lcom/google/googlenav/ui/x;)V
    .registers 6

    invoke-interface {p1}, Lau/k;->as()Lau/x;

    move-result-object v0

    invoke-interface {p1}, Lau/k;->au()Lau/x;

    move-result-object v1

    invoke-interface {p1}, Lau/k;->aw()Lam/b;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, p2}, Lau/b;-><init>(Lau/x;Lau/x;Lam/b;Lcom/google/googlenav/ui/x;)V

    return-void
.end method

.method protected constructor <init>(Lau/x;Lau/x;Lam/b;Lcom/google/googlenav/ui/x;)V
    .registers 6

    invoke-direct {p0, p4}, Lau/b;-><init>(Lcom/google/googlenav/ui/x;)V

    iput-object p1, p0, Lau/b;->u:Lau/x;

    iput-object p2, p0, Lau/b;->x:Lau/x;

    iput-object p3, p0, Lau/b;->C:Lam/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lau/b;->h:[Lau/h;

    const/4 v0, -0x1

    iput v0, p0, Lau/b;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/b;->R:Z

    sget-object v0, Lau/b;->q:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    sget-object v0, Lau/b;->r:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/googlenav/ui/x;)V
    .registers 7

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lat/a;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lau/b;->a:Ljava/lang/String;

    iput v3, p0, Lau/b;->b:I

    iput v1, p0, Lau/b;->c:I

    iput v3, p0, Lau/b;->p:I

    iput-boolean v1, p0, Lau/b;->s:Z

    invoke-static {}, Lau/l;->a()Lau/l;

    move-result-object v0

    iput-object v0, p0, Lau/b;->t:Lau/l;

    iput-object v2, p0, Lau/b;->C:Lam/b;

    iput-object v2, p0, Lau/b;->f:Lam/b;

    iput v1, p0, Lau/b;->D:I

    iput-object v2, p0, Lau/b;->F:Ljava/lang/String;

    iput-boolean v1, p0, Lau/b;->G:Z

    new-array v0, v1, [Lau/d;

    iput-object v0, p0, Lau/b;->i:[Lau/d;

    new-array v0, v1, [Lam/b;

    iput-object v0, p0, Lau/b;->j:[Lam/b;

    iput-boolean v4, p0, Lau/b;->H:Z

    iput v1, p0, Lau/b;->I:I

    iput-boolean v1, p0, Lau/b;->J:Z

    iput v1, p0, Lau/b;->K:I

    iput v1, p0, Lau/b;->O:I

    new-array v0, v1, [I

    iput-object v0, p0, Lau/b;->l:[I

    new-array v0, v1, [Lam/b;

    iput-object v0, p0, Lau/b;->P:[Lam/b;

    const/16 v0, 0xf

    iput v0, p0, Lau/b;->S:I

    iput-boolean v4, p0, Lau/b;->T:Z

    iput-object v2, p0, Lau/b;->U:Ljava/lang/String;

    iput v3, p0, Lau/b;->V:I

    iput-object p1, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    invoke-static {}, Lau/b;->aY()I

    move-result v0

    iput v0, p0, Lau/b;->o:I

    sget-object v0, Lau/b;->q:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    sget-object v0, Lau/b;->r:Lar/u;

    invoke-virtual {v0}, Lar/u;->a()V

    return-void
.end method

.method static synthetic a(Lau/b;)I
    .registers 2

    iget v0, p0, Lau/b;->N:I

    return v0
.end method

.method static synthetic a(Lau/b;I)I
    .registers 2

    iput p1, p0, Lau/b;->N:I

    return p1
.end method

.method public static a(LaJ/B;I)Lam/b;
    .registers 6

    const/4 v3, 0x1

    if-ne p1, v3, :cond_8

    invoke-static {p0}, LaJ/C;->d(LaJ/B;)Lam/b;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Lam/b;

    sget-object v1, LbD/cO;->d:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0xd

    invoke-static {p0}, LaJ/C;->a(LaJ/B;)Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1}, Lam/b;->h(II)V

    goto :goto_7
.end method

.method public static a(Lam/b;[B)Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p0}, Lam/b;->b(ILam/b;)V

    if-eqz p1, :cond_12

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lam/b;->b(I[B)V

    :cond_12
    return-object v0
.end method

.method private a(Lau/x;[Lau/x;)Lam/b;
    .registers 8

    const/4 v4, 0x7

    const/4 v1, 0x0

    new-instance v0, Lam/b;

    sget-object v2, LbD/aR;->b:Lam/e;

    invoke-direct {v0, v2}, Lam/b;-><init>(Lam/e;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lam/b;->a(I)Lam/b;

    move-result-object v2

    if-nez p2, :cond_33

    move v0, v1

    :goto_11
    const/4 v3, 0x6

    invoke-virtual {v2, v3, v0}, Lam/b;->h(II)V

    invoke-static {p1}, Lau/x;->a(Lau/x;)Lam/b;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lam/b;->a(ILam/b;)V

    if-eqz p2, :cond_35

    :goto_1e
    array-length v0, p2

    if-ge v1, v0, :cond_35

    aget-object v0, p2, v1

    invoke-virtual {v0, p1}, Lau/x;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {v0}, Lau/x;->a(Lau/x;)Lam/b;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lam/b;->a(ILam/b;)V

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_33
    const/4 v0, 0x1

    goto :goto_11

    :cond_35
    return-object v2
.end method

.method public static a(Ljava/io/DataInput;Lcom/google/googlenav/ui/x;)Lau/b;
    .registers 5

    const/4 v2, 0x2

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    check-cast p0, Ljava/io/InputStream;

    invoke-virtual {v0, p0, v1}, Lam/b;->a(Ljava/io/InputStream;I)I

    invoke-virtual {v0, v2}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lam/b;->d(I)I

    move-result v1

    invoke-static {v1, p1}, Lau/b;->b(ILcom/google/googlenav/ui/x;)Lau/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lau/b;->c(Lam/b;)Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed directions stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lau/b;->b(Z)V

    return-object v1
.end method

.method protected static a(Lau/x;Lau/x;)Lau/x;
    .registers 4

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-object p1

    :cond_3
    invoke-virtual {p0}, Lau/x;->o()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lau/x;->t()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lau/x;->d()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Lau/x;->d()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Lau/x;->d()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2b

    invoke-virtual {p0}, Lau/x;->d()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_38

    :cond_2b
    invoke-virtual {p0}, Lau/x;->h()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {p1}, Lau/x;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lau/x;->a(Lau/x;Ljava/lang/String;Ljava/lang/String;)Lau/x;

    move-result-object p1

    goto :goto_2

    :cond_38
    invoke-virtual {p1}, Lau/x;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    invoke-virtual {p1}, Lau/x;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_47
    invoke-virtual {p1}, Lau/x;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method protected static a(Lam/b;Lau/x;)V
    .registers 4

    invoke-static {p1}, Lau/x;->a(Lau/x;)Lam/b;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lam/b;->a(ILam/b;)V

    return-void
.end method

.method private aW()Lam/b;
    .registers 4

    new-instance v0, Lam/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lam/b;->a(II)V

    return-object v0
.end method

.method private aX()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/b;->s:Z

    return-void
.end method

.method private static aY()I
    .registers 2

    sget-object v1, Lau/b;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget v0, Lau/b;->n:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lau/b;->n:I

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v0
.end method

.method private aZ()Ljava/lang/String;
    .registers 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lau/b;->R()Lam/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lau/b;->S()Lam/b;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->b(Lam/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    invoke-static {v2}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7c

    const/16 v3, 0x4c4

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    invoke-virtual {p0}, Lau/b;->O()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-virtual {p0}, Lau/b;->N()I

    move-result v2

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7f

    const/16 v3, 0x2c9

    invoke-static {v3}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v5

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_64
    :goto_64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_77

    invoke-virtual {p0}, Lau/b;->P()I

    move-result v0

    if-lez v0, :cond_77

    invoke-virtual {p0}, Lau/b;->ao()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_7c
    const-string v0, ""

    goto :goto_3d

    :cond_7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64
.end method

.method static synthetic b(Lau/b;I)I
    .registers 2

    iput p1, p0, Lau/b;->L:I

    return p1
.end method

.method private static b(ILcom/google/googlenav/ui/x;)Lau/b;
    .registers 3

    packed-switch p0, :pswitch_data_1c

    new-instance v0, Lau/r;

    invoke-direct {v0, p1}, Lau/r;-><init>(Lcom/google/googlenav/ui/x;)V

    :goto_8
    return-object v0

    :pswitch_9
    new-instance v0, Lau/v;

    invoke-direct {v0, p1}, Lau/v;-><init>(Lcom/google/googlenav/ui/x;)V

    goto :goto_8

    :pswitch_f
    new-instance v0, Lau/w;

    invoke-direct {v0, p1}, Lau/w;-><init>(Lcom/google/googlenav/ui/x;)V

    goto :goto_8

    :pswitch_15
    new-instance v0, Lau/i;

    invoke-direct {v0, p1}, Lau/i;-><init>(Lcom/google/googlenav/ui/x;)V

    goto :goto_8

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method static synthetic b(Lau/b;)Lau/x;
    .registers 2

    iget-object v0, p0, Lau/b;->x:Lau/x;

    return-object v0
.end method

.method public static b(II)Z
    .registers 4

    const/4 v0, 0x1

    shl-int v1, v0, p0

    and-int/2addr v1, p1

    if-lez v1, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static d(Lam/b;)Lau/b;
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lam/b;->d(I)I

    move-result v0

    invoke-static {v0, v2}, Lau/b;->b(ILcom/google/googlenav/ui/x;)Lau/b;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->a(Lau/x;)V

    const-string v1, ""

    invoke-static {v1}, Lau/x;->a(Ljava/lang/String;)Lau/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->b(Lau/x;)V

    invoke-virtual {v0, p0, v2}, Lau/b;->a(Lam/b;[Lam/b;)Z

    return-object v0
.end method

.method public static e(Lam/b;)I
    .registers 2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x4

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static f(Lam/b;)I
    .registers 2

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lam/b;->c(I)[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v0, v0

    div-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private g(Lam/b;)Lau/h;
    .registers 4

    new-instance v0, Lau/h;

    invoke-direct {v0, p0, p1}, Lau/h;-><init>(Lau/b;Lam/b;)V

    invoke-virtual {v0}, Lau/h;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private h(Lam/b;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v1

    if-eqz v1, :cond_d

    if-eq v1, v0, :cond_d

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private i(Lam/b;)V
    .registers 12

    const/4 v9, 0x1

    iget-object v0, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    if-nez v0, :cond_6

    :cond_5
    return-void

    :cond_6
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v1

    if-eqz v1, :cond_19

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lam/b;->d(I)I

    move-result v0

    iget-object v2, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    invoke-virtual {v2, v0}, Lcom/google/googlenav/ui/x;->a(I)V

    :cond_19
    iget-object v0, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    invoke-static {p1}, Lau/b;->k(Lam/b;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/googlenav/ui/x;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    if-eqz v1, :cond_5

    invoke-virtual {v1, v9}, Lam/b;->l(I)I

    move-result v3

    const/4 v0, 0x0

    :goto_2a
    if-ge v0, v3, :cond_5

    invoke-virtual {v1, v9, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    if-eqz v4, :cond_4d

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lam/b;->e(I)J

    move-result-wide v5

    if-eqz v2, :cond_43

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4d

    :cond_43
    iget-object v7, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Lam/b;->c(I)[B

    move-result-object v4

    invoke-virtual {v7, v4, v5, v6}, Lcom/google/googlenav/ui/x;->a([BJ)Lcom/google/googlenav/ui/z;

    :cond_4d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a
.end method

.method private j(Lam/b;)V
    .registers 10

    const/4 v7, 0x1

    iget-object v0, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Lau/b;->k(Lam/b;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lam/b;

    sget-object v2, LbD/aR;->b:Lam/e;

    invoke-direct {v1, v2}, Lam/b;-><init>(Lam/e;)V

    const/16 v2, 0x11

    iget-object v3, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    invoke-virtual {v3}, Lcom/google/googlenav/ui/x;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lam/b;->h(II)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v0, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    invoke-virtual {v0, v3, v4}, Lcom/google/googlenav/ui/x;->c(J)[B

    move-result-object v0

    if-eqz v0, :cond_20

    array-length v5, v0

    if-eqz v5, :cond_20

    invoke-virtual {v1, v7}, Lam/b;->a(I)Lam/b;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v3, v4}, Lam/b;->b(IJ)V

    const/4 v3, 0x3

    invoke-virtual {v5, v3, v0}, Lam/b;->b(I[B)V

    invoke-virtual {v1, v7, v5}, Lam/b;->a(ILam/b;)V

    goto :goto_20

    :cond_4b
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v1}, Lam/b;->b(ILam/b;)V

    goto :goto_5
.end method

.method private static k(Lam/b;)Ljava/util/Set;
    .registers 12

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lam/b;->l(I)I

    move-result v4

    const/4 v0, 0x0

    move v2, v0

    :goto_d
    if-ge v2, v4, :cond_54

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    const/16 v0, 0x9

    invoke-virtual {v5, v0}, Lam/b;->l(I)I

    move-result v6

    const/4 v0, 0x0

    move v1, v0

    :goto_1d
    if-ge v1, v6, :cond_50

    const/16 v0, 0x9

    invoke-virtual {v5, v0, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v7

    const/16 v0, 0xa

    invoke-virtual {v7, v0}, Lam/b;->l(I)I

    move-result v8

    const/4 v0, 0x0

    :goto_2c
    if-ge v0, v8, :cond_4c

    const/16 v9, 0xa

    invoke-virtual {v7, v9, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v9

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lam/b;->k(I)Z

    move-result v10

    if-eqz v10, :cond_49

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lam/b;->e(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_4c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1d

    :cond_50
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    :cond_54
    return-object v3
.end method


# virtual methods
.method public A()Z
    .registers 2

    iget v0, p0, Lau/b;->p:I

    packed-switch v0, :pswitch_data_a

    :pswitch_5
    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public B()Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lau/b;->T:Z

    if-nez v2, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    iget v2, p0, Lau/b;->p:I

    packed-switch v2, :pswitch_data_1c

    goto :goto_6

    :pswitch_d
    invoke-virtual {p0, v0}, Lau/b;->t(I)Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {p0, v1}, Lau/b;->t(I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_19
    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public C()Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const/16 v2, 0x290

    invoke-virtual {p0}, Lau/b;->z()I

    move-result v0

    packed-switch v0, :pswitch_data_56

    :pswitch_a
    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    :cond_e
    :goto_e
    return-object v1

    :pswitch_f
    invoke-virtual {p0}, Lau/b;->aF()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lau/b;->as()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->e()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Las/b;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_34
    invoke-virtual {p0}, Lau/b;->aG()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-virtual {p0}, Lau/b;->au()Lau/x;

    move-result-object v0

    invoke-virtual {v0}, Lau/x;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d

    :pswitch_43
    iget-boolean v0, p0, Lau/b;->T:Z

    if-eqz v0, :cond_4c

    invoke-static {v2}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_4c
    const/16 v0, 0x294

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_53
    move-object v0, v1

    goto :goto_1d

    nop

    :pswitch_data_56
    .packed-switch 0x3
        :pswitch_f
        :pswitch_a
        :pswitch_43
    .end packed-switch
.end method

.method public D()[Lau/x;
    .registers 2

    iget-object v0, p0, Lau/b;->w:[Lau/x;

    return-object v0
.end method

.method public E()[Lau/x;
    .registers 2

    iget-object v0, p0, Lau/b;->z:[Lau/x;

    return-object v0
.end method

.method public F()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lau/b;->c:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public G()Z
    .registers 2

    iget-boolean v0, p0, Lau/b;->Q:Z

    return v0
.end method

.method public H()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lau/b;->c:I

    iput-boolean v0, p0, Lau/b;->Q:Z

    return-void
.end method

.method public I()Lcom/google/googlenav/ui/x;
    .registers 2

    iget-object v0, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    return-object v0
.end method

.method public J()Lam/b;
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v1, 0x0

    new-instance v2, Lam/b;

    sget-object v0, LbD/aR;->g:Lam/e;

    invoke-direct {v2, v0}, Lam/b;-><init>(Lam/e;)V

    const/4 v0, 0x1

    iget v3, p0, Lau/b;->p:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    const/4 v0, 0x2

    iget v3, p0, Lau/b;->b:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    iget-object v0, p0, Lau/b;->t:Lau/l;

    invoke-virtual {v0}, Lau/l;->b()Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x3

    iget-object v3, p0, Lau/b;->t:Lau/l;

    invoke-virtual {v3}, Lau/l;->c()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/google/googlenav/ui/bq;->a(Ljava/util/Date;)Lam/b;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lam/b;->b(ILam/b;)V

    :cond_2d
    const/4 v0, 0x4

    iget-object v3, p0, Lau/b;->t:Lau/l;

    invoke-virtual {v3}, Lau/l;->d()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    const/16 v0, 0xd

    iget v3, p0, Lau/b;->O:I

    invoke-virtual {v2, v0, v3}, Lam/b;->h(II)V

    iget-object v0, p0, Lau/b;->u:Lau/x;

    iget-object v3, p0, Lau/b;->w:[Lau/x;

    invoke-direct {p0, v0, v3}, Lau/b;->a(Lau/x;[Lau/x;)Lam/b;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lam/b;->a(ILam/b;)V

    iget-object v0, p0, Lau/b;->x:Lau/x;

    iget-object v3, p0, Lau/b;->z:[Lau/x;

    invoke-direct {p0, v0, v3}, Lau/b;->a(Lau/x;[Lau/x;)Lam/b;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lam/b;->a(ILam/b;)V

    move v0, v1

    :goto_55
    iget v3, p0, Lau/b;->I:I

    if-ge v0, v3, :cond_6a

    invoke-virtual {v2, v5}, Lam/b;->a(I)Lam/b;

    move-result-object v3

    iget-object v4, p0, Lau/b;->h:[Lau/h;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lau/h;->a(Lam/b;)V

    invoke-virtual {v2, v5, v3}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_6a
    move v0, v1

    :goto_6b
    iget-object v3, p0, Lau/b;->i:[Lau/d;

    array-length v3, v3

    if-ge v0, v3, :cond_80

    const/16 v3, 0xc

    iget-object v4, p0, Lau/b;->i:[Lau/d;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lau/d;->d()Lam/b;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_80
    move v0, v1

    :goto_81
    iget-object v3, p0, Lau/b;->j:[Lam/b;

    array-length v3, v3

    if-ge v0, v3, :cond_92

    const/16 v3, 0x10

    iget-object v4, p0, Lau/b;->j:[Lam/b;

    aget-object v4, v4, v0

    invoke-virtual {v2, v3, v4}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_81

    :cond_92
    invoke-direct {p0, v2}, Lau/b;->j(Lam/b;)V

    :goto_95
    iget-object v0, p0, Lau/b;->P:[Lam/b;

    array-length v0, v0

    if-ge v1, v0, :cond_a6

    const/16 v0, 0xe

    iget-object v3, p0, Lau/b;->P:[Lam/b;

    aget-object v3, v3, v1

    invoke-virtual {v2, v0, v3}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    :cond_a6
    return-object v2
.end method

.method protected K()Lam/b;
    .registers 6

    const/4 v4, 0x3

    const/4 v3, 0x1

    new-instance v0, Lam/b;

    sget-object v1, LbD/Z;->b:Lam/e;

    invoke-direct {v0, v1}, Lam/b;-><init>(Lam/e;)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lau/b;->J()Lam/b;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lam/b;->b(ILam/b;)V

    iget-object v1, p0, Lau/b;->u:Lau/x;

    invoke-virtual {v1}, Lau/x;->b()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lam/b;->a(ILam/b;)V

    iget-object v1, p0, Lau/b;->x:Lau/x;

    invoke-virtual {v1}, Lau/x;->b()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lam/b;->a(ILam/b;)V

    invoke-virtual {p0}, Lau/b;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {p0}, Lau/b;->aP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lam/b;->b(ILjava/lang/String;)V

    :cond_34
    const/4 v1, 0x4

    invoke-virtual {p0}, Lau/b;->aB()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lam/b;->h(II)V

    invoke-virtual {p0}, Lau/b;->aa()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-virtual {p0}, Lau/b;->Z()Z

    move-result v1

    if-nez v1, :cond_4c

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Lam/b;->b(IZ)V

    :cond_4c
    return-object v0
.end method

.method public L()I
    .registers 3

    iget v0, p0, Lau/b;->o:I

    iget v1, p0, Lau/b;->K:I

    add-int/2addr v0, v1

    return v0
.end method

.method abstract M()I
.end method

.method public N()I
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->k()I

    move-result v0

    return v0
.end method

.method public O()Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->l()Z

    move-result v0

    return v0
.end method

.method public P()I
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->m()I

    move-result v0

    return v0
.end method

.method public Q()Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->n()Z

    move-result v0

    return v0
.end method

.method public R()Lam/b;
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->s()Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public S()Lam/b;
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->t()Lam/b;

    move-result-object v0

    return-object v0
.end method

.method public T()Lau/l;
    .registers 2

    iget-object v0, p0, Lau/b;->t:Lau/l;

    return-object v0
.end method

.method public U()Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->h()Z

    move-result v0

    return v0
.end method

.method public V()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    invoke-virtual {v1}, Lau/h;->g()[LaJ/B;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v1, v1

    if-lez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

.method public W()V
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->w()V

    return-void
.end method

.method public Y()V
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->x()V

    return-void
.end method

.method public Z()Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->y()Z

    move-result v0

    goto :goto_7
.end method

.method public a()I
    .registers 2

    const/16 v0, 0x1c

    return v0
.end method

.method public a(LaJ/p;)LaJ/Y;
    .registers 6

    iget v0, p0, Lau/b;->K:I

    if-ltz v0, :cond_b

    iget v0, p0, Lau/b;->K:I

    iget-object v1, p0, Lau/b;->h:[Lau/h;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lau/b;->h:[Lau/h;

    iget v1, p0, Lau/b;->K:I

    aget-object v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [LaJ/B;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lau/h;->i()LaJ/B;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Lau/h;->j()LaJ/B;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0}, Lau/h;->d(Lau/h;)LaJ/B;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LaJ/p;->a([LaJ/B;LaJ/B;)LaJ/Y;

    move-result-object v0

    goto :goto_c
.end method

.method public a(ILcom/google/googlenav/ui/x;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lau/b;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_f

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/16 v0, 0x74

    invoke-static {v0}, Lcom/google/googlenav/ui/bw;->a(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_e
.end method

.method public a(B)V
    .registers 2

    iput-byte p1, p0, Lau/b;->M:B

    return-void
.end method

.method public a(I)V
    .registers 3

    invoke-virtual {p0}, Lau/b;->f()I

    move-result v0

    if-lt p1, v0, :cond_c

    invoke-virtual {p0}, Lau/b;->f()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    :cond_c
    if-gez p1, :cond_14

    const/4 v0, 0x0

    iput-byte v0, p0, Lau/b;->M:B

    iput p1, p0, Lau/b;->L:I

    :goto_13
    return-void

    :cond_14
    iget-byte v0, p0, Lau/b;->M:B

    if-nez v0, :cond_1e

    iput p1, p0, Lau/b;->L:I

    const/4 v0, 0x1

    iput-byte v0, p0, Lau/b;->M:B

    goto :goto_13

    :cond_1e
    iput p1, p0, Lau/b;->L:I

    goto :goto_13
.end method

.method public a(Lam/b;)V
    .registers 2

    iput-object p1, p0, Lau/b;->f:Lam/b;

    return-void
.end method

.method public a(Lau/e;)V
    .registers 2

    iput-object p1, p0, Lau/b;->W:Lau/e;

    return-void
.end method

.method public a(Lau/l;)V
    .registers 2

    iput-object p1, p0, Lau/b;->t:Lau/l;

    return-void
.end method

.method public a(Lau/x;)V
    .registers 2

    iput-object p1, p0, Lau/b;->u:Lau/x;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lau/b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .registers 2

    iput-boolean p1, p0, Lau/b;->T:Z

    return-void
.end method

.method public a([Lam/b;)V
    .registers 2

    iput-object p1, p0, Lau/b;->P:[Lam/b;

    return-void
.end method

.method protected a(Lam/b;[Lam/b;)Z
    .registers 14

    const/4 v5, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lau/b;->V:I

    iput-boolean v1, p0, Lau/b;->G:Z

    invoke-virtual {p0}, Lau/b;->F()Z

    move-result v0

    if-eqz v0, :cond_54

    iput-boolean v1, p0, Lau/b;->Q:Z

    iget-object v0, p0, Lau/b;->h:[Lau/h;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lau/b;->h:[Lau/h;

    array-length v0, v0

    if-nez v0, :cond_21c

    :cond_1b
    new-array v0, v2, [Lau/h;

    new-instance v3, Lau/h;

    invoke-direct {v3, p0}, Lau/h;-><init>(Lau/b;)V

    aput-object v3, v0, v1

    iput-object v0, p0, Lau/b;->h:[Lau/h;

    move v0, v2

    :goto_27
    invoke-virtual {p1, v2}, Lam/b;->d(I)I

    move-result v3

    if-nez v3, :cond_4c

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lam/b;->l(I)I

    move-result v3

    if-lez v3, :cond_4c

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    iget-object v4, p0, Lau/b;->h:[Lau/h;

    aget-object v1, v4, v1

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lau/h;->a(Lau/h;Lam/b;Z)V

    :goto_48
    invoke-direct {p0}, Lau/b;->aX()V

    :cond_4b
    :goto_4b
    return v2

    :cond_4c
    iget-object v0, p0, Lau/b;->h:[Lau/h;

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lau/h;->a(Lau/h;I)I

    goto :goto_48

    :cond_54
    const/4 v0, 0x0

    iput-object v0, p0, Lau/b;->h:[Lau/h;

    iput v1, p0, Lau/b;->I:I

    const/16 v0, 0xd

    invoke-virtual {p1, v0}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lau/b;->O:I

    invoke-virtual {p1, v9}, Lam/b;->l(I)I

    move-result v0

    if-lez v0, :cond_16f

    invoke-virtual {p1, v9, v1}, Lam/b;->c(II)I

    move-result v0

    iput v0, p0, Lau/b;->b:I

    invoke-virtual {p0}, Lau/b;->M()I

    move-result v0

    iput v0, p0, Lau/b;->K:I

    invoke-virtual {p1, v2}, Lam/b;->d(I)I

    move-result v0

    iput v0, p0, Lau/b;->p:I

    iget v0, p0, Lau/b;->p:I

    if-eq v0, v10, :cond_173

    move v0, v2

    :goto_7e
    iput-boolean v0, p0, Lau/b;->v:Z

    iget v0, p0, Lau/b;->p:I

    if-eq v0, v10, :cond_176

    move v0, v2

    :goto_85
    iput-boolean v0, p0, Lau/b;->y:Z

    invoke-virtual {p1, v10}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-virtual {p1, v10}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    iput-object v0, p0, Lau/b;->f:Lam/b;

    invoke-static {p1, v5}, Lam/g;->e(Lam/b;I)I

    move-result v0

    iput v0, p0, Lau/b;->g:I

    :cond_99
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lau/b;->E:Ljava/lang/String;

    const/16 v0, 0x16

    invoke-virtual {p1, v0}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lau/b;->F:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v0

    if-ne v0, v9, :cond_4b

    iget-object v0, p0, Lau/b;->u:Lau/x;

    iput-object v0, p0, Lau/b;->A:Lau/x;

    iget-object v0, p0, Lau/b;->x:Lau/x;

    iput-object v0, p0, Lau/b;->B:Lau/x;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-direct {p0, v0}, Lau/b;->h(Lam/b;)Z

    move-result v4

    iput-boolean v4, p0, Lau/b;->v:Z

    iget-boolean v4, p0, Lau/b;->v:Z

    if-eqz v4, :cond_d9

    if-eqz p2, :cond_179

    array-length v4, p2

    if-lt v4, v2, :cond_179

    aget-object v4, p2, v1

    invoke-static {v4, v3}, Lau/x;->b(Lam/b;Lam/b;)Lau/x;

    move-result-object v3

    iput-object v3, p0, Lau/b;->u:Lau/x;

    :cond_d9
    :goto_d9
    invoke-virtual {p0, v0}, Lau/b;->b(Lam/b;)[Lau/x;

    move-result-object v3

    iput-object v3, p0, Lau/b;->w:[Lau/x;

    iget-boolean v3, p0, Lau/b;->v:Z

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lam/b;->d(I)I

    move-result v0

    if-ne v0, v9, :cond_187

    move v0, v2

    :goto_e9
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lau/b;->v:Z

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    invoke-direct {p0, v0}, Lau/b;->h(Lam/b;)Z

    move-result v4

    iput-boolean v4, p0, Lau/b;->y:Z

    iget-boolean v4, p0, Lau/b;->y:Z

    if-eqz v4, :cond_10d

    if-eqz p2, :cond_18a

    array-length v4, p2

    if-lt v4, v9, :cond_18a

    aget-object v4, p2, v2

    invoke-static {v4, v3}, Lau/x;->b(Lam/b;Lam/b;)Lau/x;

    move-result-object v3

    iput-object v3, p0, Lau/b;->x:Lau/x;

    :cond_10d
    :goto_10d
    invoke-virtual {p0, v0}, Lau/b;->b(Lam/b;)[Lau/x;

    move-result-object v3

    iput-object v3, p0, Lau/b;->z:[Lau/x;

    iget-boolean v3, p0, Lau/b;->y:Z

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lam/b;->d(I)I

    move-result v0

    if-ne v0, v9, :cond_198

    move v0, v2

    :goto_11d
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lau/b;->y:Z

    const/16 v0, 0x13

    invoke-virtual {p1, v0}, Lam/b;->b(I)Z

    move-result v0

    iput-boolean v0, p0, Lau/b;->H:Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v0

    iput v0, p0, Lau/b;->I:I

    iget v0, p0, Lau/b;->I:I

    invoke-virtual {p0}, Lau/b;->p()I

    move-result v3

    if-le v0, v3, :cond_140

    invoke-virtual {p0}, Lau/b;->p()I

    move-result v0

    iput v0, p0, Lau/b;->I:I

    iput v5, p0, Lau/b;->p:I

    :cond_140
    iget v0, p0, Lau/b;->I:I

    new-array v0, v0, [Lau/h;

    iput-object v0, p0, Lau/b;->h:[Lau/h;

    iput-boolean v2, p0, Lau/b;->J:Z

    move v0, v1

    :goto_149
    :try_start_149
    iget v3, p0, Lau/b;->I:I

    if-ge v0, v3, :cond_1aa

    const/16 v3, 0x8

    invoke-virtual {p1, v3, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    iget-object v4, p0, Lau/b;->h:[Lau/h;

    invoke-direct {p0, v3}, Lau/b;->g(Lam/b;)Lau/h;

    move-result-object v3

    aput-object v3, v4, v0

    iget-object v3, p0, Lau/b;->h:[Lau/h;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lau/h;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Las/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16c

    const/4 v3, 0x0

    iput-boolean v3, p0, Lau/b;->J:Z
    :try_end_16c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_149 .. :try_end_16c} :catch_19a

    :cond_16c
    add-int/lit8 v0, v0, 0x1

    goto :goto_149

    :cond_16f
    iput v5, p0, Lau/b;->p:I

    goto/16 :goto_4b

    :cond_173
    move v0, v1

    goto/16 :goto_7e

    :cond_176
    move v0, v1

    goto/16 :goto_85

    :cond_179
    iget-object v4, p0, Lau/b;->u:Lau/x;

    invoke-static {v3, v0}, Lau/x;->a(Lam/b;Lam/b;)Lau/x;

    move-result-object v3

    invoke-static {v4, v3}, Lau/b;->a(Lau/x;Lau/x;)Lau/x;

    move-result-object v3

    iput-object v3, p0, Lau/b;->u:Lau/x;

    goto/16 :goto_d9

    :cond_187
    move v0, v1

    goto/16 :goto_e9

    :cond_18a
    iget-object v4, p0, Lau/b;->x:Lau/x;

    invoke-static {v3, v0}, Lau/x;->a(Lam/b;Lam/b;)Lau/x;

    move-result-object v3

    invoke-static {v4, v3}, Lau/b;->a(Lau/x;Lau/x;)Lau/x;

    move-result-object v3

    iput-object v3, p0, Lau/b;->x:Lau/x;

    goto/16 :goto_10d

    :cond_198
    move v0, v1

    goto :goto_11d

    :catch_19a
    move-exception v3

    iput v0, p0, Lau/b;->I:I

    iget-object v0, p0, Lau/b;->h:[Lau/h;

    iget v3, p0, Lau/b;->I:I

    const/4 v4, 0x0

    aput-object v4, v0, v3

    iget v0, p0, Lau/b;->I:I

    if-nez v0, :cond_1aa

    iput v5, p0, Lau/b;->p:I

    :cond_1aa
    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v3

    new-array v0, v3, [Lau/d;

    iput-object v0, p0, Lau/b;->i:[Lau/d;

    move v0, v1

    :goto_1b5
    if-ge v0, v3, :cond_1d5

    const/16 v4, 0xc

    invoke-virtual {p1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    iget-object v5, p0, Lau/b;->i:[Lau/d;

    new-instance v6, Lau/d;

    invoke-virtual {v4, v2}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v9}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v10}, Lam/g;->a(Lam/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, p0, v7, v8, v4}, Lau/d;-><init>(Lau/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b5

    :cond_1d5
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v3

    new-array v0, v3, [Lam/b;

    iput-object v0, p0, Lau/b;->j:[Lam/b;

    move v0, v1

    :goto_1e0
    if-ge v0, v3, :cond_1ef

    iget-object v4, p0, Lau/b;->j:[Lam/b;

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e0

    :cond_1ef
    invoke-direct {p0, p1}, Lau/b;->i(Lam/b;)V

    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lam/b;->l(I)I

    move-result v0

    new-array v3, v0, [I

    iput-object v3, p0, Lau/b;->l:[I

    new-array v3, v0, [Lam/b;

    iput-object v3, p0, Lau/b;->P:[Lam/b;

    :goto_200
    if-ge v1, v0, :cond_217

    const/16 v3, 0xe

    invoke-virtual {p1, v3, v1}, Lam/b;->e(II)Lam/b;

    move-result-object v3

    iget-object v4, p0, Lau/b;->l:[I

    invoke-virtual {v3, v2}, Lam/b;->d(I)I

    move-result v5

    aput v5, v4, v1

    iget-object v4, p0, Lau/b;->P:[Lam/b;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_200

    :cond_217
    invoke-direct {p0}, Lau/b;->aX()V

    goto/16 :goto_4b

    :cond_21c
    move v0, v1

    goto/16 :goto_27
.end method

.method public a(Ljava/io/DataInput;)Z
    .registers 7

    const/16 v4, 0x1b

    sget-object v0, LbD/aR;->g:Lam/e;

    invoke-static {v0, p1}, Lam/g;->a(Lam/e;Ljava/io/DataInput;)Lam/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lau/b;->a(Lam/b;[Lam/b;)Z

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lau/b;->t:Lau/l;

    invoke-virtual {v2}, Lau/l;->d()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2b

    iget-object v2, p0, Lau/b;->f:Lam/b;

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->e(Lam/b;)Ljava/util/Date;

    move-result-object v2

    iget v3, p0, Lau/b;->g:I

    invoke-static {v2, v3}, Lau/l;->a(Ljava/util/Date;I)Lau/l;

    move-result-object v2

    iput-object v2, p0, Lau/b;->t:Lau/l;

    :cond_2b
    invoke-virtual {p0}, Lau/b;->F()Z

    move-result v2

    if-eqz v2, :cond_4d

    sget-object v2, Lau/b;->q:Lar/u;

    invoke-virtual {v2}, Lar/u;->c()V

    sget-object v2, Lau/b;->r:Lar/u;

    invoke-virtual {v2}, Lar/u;->b()V

    :goto_3b
    invoke-virtual {v0, v4}, Lam/b;->k(I)Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-static {}, Lcom/google/googlenav/V;->a()Lcom/google/googlenav/V;

    move-result-object v2

    invoke-virtual {v0, v4}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/googlenav/V;->a(Lam/b;)V

    :cond_4c
    return v1

    :cond_4d
    sget-object v2, Lau/b;->r:Lar/u;

    invoke-virtual {v2}, Lar/u;->c()V

    sget-object v2, Lau/b;->q:Lar/u;

    invoke-virtual {v2}, Lar/u;->b()V

    goto :goto_3b
.end method

.method public a(II)[LaJ/B;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v3

    if-nez v3, :cond_a

    new-array v0, v1, [LaJ/B;

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    if-ltz p1, :cond_e

    if-gez p2, :cond_13

    :cond_e
    invoke-virtual {v3}, Lau/h;->g()[LaJ/B;

    move-result-object v0

    goto :goto_9

    :cond_13
    invoke-virtual {v3, p1}, Lau/h;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v3, p2}, Lau/h;->e(I)Z

    move-result v0

    if-nez v0, :cond_22

    :cond_1f
    new-array v0, v1, [LaJ/B;

    goto :goto_9

    :cond_22
    invoke-virtual {v3, p1}, Lau/h;->f(I)I

    move-result v2

    invoke-virtual {v3, p2}, Lau/h;->f(I)I

    move-result v4

    sub-int v0, v4, v2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [LaJ/B;

    move v1, v2

    :goto_31
    if-gt v1, v4, :cond_9

    sub-int v5, v1, v2

    invoke-virtual {v3}, Lau/h;->g()[LaJ/B;

    move-result-object v6

    aget-object v6, v6, v1

    aput-object v6, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_31
.end method

.method public aA()I
    .registers 2

    iget v0, p0, Lau/b;->k:I

    return v0
.end method

.method public aB()I
    .registers 2

    iget v0, p0, Lau/b;->K:I

    return v0
.end method

.method public aC()I
    .registers 2

    iget v0, p0, Lau/b;->I:I

    return v0
.end method

.method public aD()LaJ/B;
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->i()LaJ/B;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lau/b;->u:Lau/x;

    invoke-virtual {v0}, Lau/x;->f()LaJ/B;

    move-result-object v0

    goto :goto_e
.end method

.method public aE()LaJ/B;
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->j()LaJ/B;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lau/b;->x:Lau/x;

    invoke-virtual {v0}, Lau/x;->f()LaJ/B;

    move-result-object v0

    goto :goto_e
.end method

.method public aF()Z
    .registers 3

    iget v0, p0, Lau/b;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lau/b;->v:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public aG()Z
    .registers 3

    iget v0, p0, Lau/b;->p:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_b

    iget-boolean v0, p0, Lau/b;->y:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public aH()[I
    .registers 2

    iget-object v0, p0, Lau/b;->l:[I

    return-object v0
.end method

.method public aI()I
    .registers 6

    const/4 v0, 0x0

    iget v1, p0, Lau/b;->V:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    iget v0, p0, Lau/b;->V:I

    :goto_8
    return v0

    :cond_9
    iput v0, p0, Lau/b;->V:I

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v3

    :goto_13
    invoke-virtual {p0}, Lau/b;->f()I

    move-result v1

    if-ge v0, v1, :cond_49

    invoke-virtual {p0, v0, v3}, Lau/b;->a(ILcom/google/googlenav/ui/x;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    :goto_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_26
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eqz v3, :cond_40

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/x;->a(C)Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-virtual {v3, v1}, Lcom/google/googlenav/ui/x;->c(C)I

    move-result v1

    :goto_37
    iget v4, p0, Lau/b;->V:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lau/b;->V:I

    goto :goto_23

    :cond_40
    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v4

    invoke-interface {v4, v1}, Lah/g;->c(C)I

    move-result v1

    goto :goto_37

    :cond_49
    iget v0, p0, Lau/b;->V:I

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->f()Lah/g;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Lah/g;->c(C)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lau/b;->V:I

    iget v0, p0, Lau/b;->V:I

    goto :goto_8
.end method

.method public aJ()Ljava/lang/String;
    .registers 5

    const/4 v2, 0x1

    invoke-virtual {p0}, Lau/b;->k()I

    move-result v0

    if-ne v0, v2, :cond_9

    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lau/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Las/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_19
    const-string v0, ""

    goto :goto_8

    :cond_1c
    const/16 v1, 0x4f5

    invoke-static {v1}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lau/h;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Las/b;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method abstract aM()Lau/b;
.end method

.method public aN()Lau/b;
    .registers 3

    invoke-virtual {p0}, Lau/b;->aM()Lau/b;

    move-result-object v0

    invoke-virtual {p0}, Lau/b;->T()Lau/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->a(Lau/l;)V

    invoke-virtual {p0}, Lau/b;->o()[Lam/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->a([Lam/b;)V

    invoke-virtual {p0}, Lau/b;->aS()I

    move-result v1

    invoke-virtual {v0, v1}, Lau/b;->v(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lau/b;->b(Z)V

    return-object v0
.end method

.method public aO()Lau/b;
    .registers 3

    invoke-virtual {p0}, Lau/b;->aN()Lau/b;

    move-result-object v0

    invoke-virtual {p0}, Lau/b;->K()Lam/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lau/b;->c(Lam/b;)Z

    return-object v0
.end method

.method public aP()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lau/b;->a:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, ""

    goto :goto_6
.end method

.method public aQ()Z
    .registers 2

    iget-boolean v0, p0, Lau/b;->G:Z

    return v0
.end method

.method public aR()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lau/b;->G:Z

    return-void
.end method

.method public aS()I
    .registers 2

    iget v0, p0, Lau/b;->S:I

    return v0
.end method

.method public aT()Lau/b;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lau/b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_19

    new-instance v0, Lau/r;

    invoke-virtual {p0}, Lau/b;->ar()Lau/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lau/r;-><init>(Lau/k;)V

    :cond_11
    :goto_11
    if-eqz v0, :cond_18

    iget v1, p0, Lau/b;->S:I

    invoke-virtual {v0, v1}, Lau/b;->v(I)V

    :cond_18
    return-object v0

    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lau/b;->t(I)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Lau/v;

    invoke-virtual {p0}, Lau/b;->ar()Lau/j;

    move-result-object v1

    invoke-static {}, Lcom/google/googlenav/ui/bw;->d()Lcom/google/googlenav/ui/bw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlenav/ui/bw;->aa()Lcom/google/googlenav/ui/x;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lau/v;-><init>(Lau/k;Lcom/google/googlenav/ui/x;)V

    goto :goto_11
.end method

.method public aU()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/b;->U:Ljava/lang/String;

    return-object v0
.end method

.method public aV()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lau/b;->b:I

    packed-switch v0, :pswitch_data_22

    const/16 v0, 0xf2

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    :pswitch_c
    const/16 v0, 0x4d0

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_13
    const/16 v0, 0x4f9

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :pswitch_1a
    const/16 v0, 0x56

    invoke-static {v0}, Lcom/google/googlenav/U;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_c
        :pswitch_13
        :pswitch_1a
    .end packed-switch
.end method

.method public aa()Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lau/h;->u()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public ab()Z
    .registers 4

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lau/b;->ag()I

    move-result v2

    if-ge v0, v2, :cond_13

    invoke-virtual {p0, v0}, Lau/b;->n(I)Lau/s;

    move-result-object v2

    invoke-virtual {v2}, Lau/s;->D()I

    move-result v2

    if-ltz v2, :cond_14

    const/4 v1, 0x1

    :cond_13
    return v1

    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public ac()Z
    .registers 2

    iget-object v0, p0, Lau/b;->j:[Lam/b;

    array-length v0, v0

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public ad()Lau/h;
    .registers 2

    iget v0, p0, Lau/b;->K:I

    invoke-virtual {p0, v0}, Lau/b;->l(I)Lau/h;

    move-result-object v0

    return-object v0
.end method

.method public ae()Ljava/util/List;
    .registers 3

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {v0}, Lau/h;->c()Ljava/util/List;

    move-result-object v0

    goto :goto_c
.end method

.method public af()[LaJ/B;
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lau/b;->a(II)[LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public ag()I
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lau/h;->e()I

    move-result v0

    goto :goto_7
.end method

.method public ah()Ljava/util/List;
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lau/b;->ag()I

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-static {}, LK/bn;->f()LK/bn;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->f()Ljava/util/List;

    move-result-object v0

    goto :goto_10
.end method

.method public ai()I
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-static {v0}, Lau/h;->a(Lau/h;)I

    move-result v0

    return v0
.end method

.method public aj()I
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-static {v0}, Lau/h;->b(Lau/h;)I

    move-result v0

    return v0
.end method

.method public ak()LaJ/B;
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-static {v0}, Lau/h;->c(Lau/h;)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public al()I
    .registers 2

    iget v0, p0, Lau/b;->D:I

    return v0
.end method

.method public am()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/b;->E:Ljava/lang/String;

    return-object v0
.end method

.method public an()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lau/b;->F:Ljava/lang/String;

    return-object v0
.end method

.method public ao()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->o()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public ap()Ljava/lang/String;
    .registers 2

    iget v0, p0, Lau/b;->K:I

    invoke-virtual {p0, v0}, Lau/b;->p(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aq()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lau/b;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lau/b;->ap()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_21

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_21

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ar()Lau/j;
    .registers 5

    new-instance v0, Lau/j;

    invoke-virtual {p0}, Lau/b;->as()Lau/x;

    move-result-object v1

    invoke-virtual {p0}, Lau/b;->au()Lau/x;

    move-result-object v2

    invoke-virtual {p0}, Lau/b;->aw()Lam/b;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lau/j;-><init>(Lau/x;Lau/x;Lam/b;)V

    return-object v0
.end method

.method public as()Lau/x;
    .registers 2

    iget-object v0, p0, Lau/b;->u:Lau/x;

    return-object v0
.end method

.method public at()Lau/x;
    .registers 2

    iget-object v0, p0, Lau/b;->A:Lau/x;

    return-object v0
.end method

.method public au()Lau/x;
    .registers 2

    iget-object v0, p0, Lau/b;->x:Lau/x;

    return-object v0
.end method

.method public av()Lau/x;
    .registers 2

    iget-object v0, p0, Lau/b;->B:Lau/x;

    return-object v0
.end method

.method public aw()Lam/b;
    .registers 2

    iget-object v0, p0, Lau/b;->C:Lam/b;

    return-object v0
.end method

.method public ax()I
    .registers 2

    iget v0, p0, Lau/b;->O:I

    return v0
.end method

.method public ay()LaJ/B;
    .registers 3

    iget v0, p0, Lau/b;->K:I

    if-ltz v0, :cond_b

    iget v0, p0, Lau/b;->K:I

    iget-object v1, p0, Lau/b;->h:[Lau/h;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lau/b;->h:[Lau/h;

    iget v1, p0, Lau/b;->K:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lau/h;->d(Lau/h;)LaJ/B;

    move-result-object v0

    goto :goto_c
.end method

.method public az()Z
    .registers 2

    iget-boolean v0, p0, Lau/b;->H:Z

    return v0
.end method

.method public b(I)Lcom/google/googlenav/D;
    .registers 3

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {v0, p1}, Lau/h;->a(I)Lau/m;

    move-result-object v0

    goto :goto_7
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public b(Lau/x;)V
    .registers 2

    iput-object p1, p0, Lau/b;->x:Lau/x;

    return-void
.end method

.method public b(Ljava/io/DataOutput;)V
    .registers 3

    invoke-virtual {p0}, Lau/b;->K()Lam/b;

    move-result-object v0

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Lam/b;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lau/b;->U:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .registers 2

    iput-boolean p1, p0, Lau/b;->R:Z

    return-void
.end method

.method protected b(Lam/b;)[Lau/x;
    .registers 9

    const/4 v0, 0x0

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lam/b;->d(I)I

    move-result v1

    invoke-virtual {p1, v6}, Lam/b;->l(I)I

    move-result v3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_12

    if-eq v1, v5, :cond_12

    :cond_11
    :goto_11
    return-object v0

    :cond_12
    new-array v1, v3, [Lau/x;

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v3, :cond_24

    invoke-virtual {p1, v6, v2}, Lam/b;->e(II)Lam/b;

    move-result-object v4

    invoke-static {v4, p1}, Lau/x;->a(Lam/b;Lam/b;)Lau/x;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    array-length v2, v1

    if-le v2, v5, :cond_11

    move-object v0, v1

    goto :goto_11
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lau/b;->L:I

    return v0
.end method

.method public c(I)I
    .registers 2

    return p1
.end method

.method protected c(Lam/b;)Z
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-virtual {p1, v4}, Lam/b;->l(I)I

    move-result v0

    new-array v1, v0, [Lam/b;

    const/4 v0, 0x0

    :goto_9
    array-length v2, v1

    if-ge v0, v2, :cond_15

    invoke-virtual {p1, v4, v0}, Lam/b;->e(II)Lam/b;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_15
    invoke-virtual {p1, v3}, Lam/b;->k(I)Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1, v3}, Lam/b;->i(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lau/b;->a(Ljava/lang/String;)V

    :cond_22
    const/4 v0, 0x5

    invoke-static {p1, v0}, Lam/g;->g(Lam/b;I)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0, v0}, Lau/b;->r(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lam/b;->h(I)Lam/b;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lau/b;->a(Lam/b;[Lam/b;)Z

    move-result v0

    iget-object v1, p0, Lau/b;->f:Lam/b;

    if-eqz v1, :cond_61

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lau/b;->f:Lam/b;

    invoke-static {v2}, Lcom/google/googlenav/ui/bq;->d(Lam/b;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iget v2, p0, Lau/b;->g:I

    invoke-static {v1, v2}, Lau/l;->a(Ljava/util/Date;I)Lau/l;

    move-result-object v1

    iput-object v1, p0, Lau/b;->t:Lau/l;

    :goto_4b
    if-eqz v0, :cond_60

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lam/g;->g(Lam/b;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lau/b;->s(I)V

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lam/b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-virtual {p0}, Lau/b;->Y()V

    :cond_60
    return v0

    :cond_61
    invoke-static {}, Lau/l;->a()Lau/l;

    move-result-object v1

    iput-object v1, p0, Lau/b;->t:Lau/l;

    goto :goto_4b
.end method

.method public d()B
    .registers 2

    iget-byte v0, p0, Lau/b;->M:B

    return v0
.end method

.method public d(I)Lam/b;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-instance v3, Lam/b;

    sget-object v0, LbD/aR;->f:Lam/e;

    invoke-direct {v3, v0}, Lam/b;-><init>(Lam/e;)V

    invoke-virtual {v3, v2, p1}, Lam/b;->a(II)V

    invoke-virtual {p0}, Lau/b;->as()Lau/x;

    move-result-object v0

    invoke-static {v3, v0}, Lau/b;->a(Lam/b;Lau/x;)V

    invoke-virtual {p0}, Lau/b;->au()Lau/x;

    move-result-object v0

    invoke-static {v3, v0}, Lau/b;->a(Lam/b;Lau/x;)V

    const/4 v0, 0x5

    invoke-virtual {p0}, Lau/b;->p()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lam/b;->h(II)V

    const/4 v0, 0x7

    iget v4, p0, Lau/b;->c:I

    invoke-virtual {v3, v0, v4}, Lam/b;->h(II)V

    const/16 v0, 0xd

    invoke-virtual {v3, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x1e

    invoke-virtual {v3, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x1f

    invoke-virtual {v3, v0, v2}, Lam/b;->b(IZ)V

    iget-object v0, p0, Lau/b;->C:Lam/b;

    if-eqz v0, :cond_42

    const/16 v0, 0x9

    iget-object v4, p0, Lau/b;->C:Lam/b;

    invoke-virtual {v3, v0, v4}, Lam/b;->b(ILam/b;)V

    :cond_42
    const/16 v0, 0xb

    invoke-virtual {v3, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x1c

    invoke-virtual {v3, v0, v1}, Lam/b;->b(IZ)V

    move v0, v1

    :goto_4d
    iget-object v4, p0, Lau/b;->P:[Lam/b;

    array-length v4, v4

    if-ge v0, v4, :cond_5e

    const/16 v4, 0xa

    iget-object v5, p0, Lau/b;->P:[Lam/b;

    aget-object v5, v5, v0

    invoke-virtual {v3, v4, v5}, Lam/b;->a(ILam/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4d

    :cond_5e
    const/16 v0, 0x10

    invoke-virtual {v3, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x15

    invoke-virtual {v3, v0, v2}, Lam/b;->b(IZ)V

    const/16 v0, 0x1b

    invoke-virtual {p0}, Lau/b;->m()Z

    move-result v4

    if-nez v4, :cond_71

    move v1, v2

    :cond_71
    invoke-virtual {v3, v0, v1}, Lam/b;->b(IZ)V

    return-object v3
.end method

.method public e()Lcom/google/googlenav/D;
    .registers 3

    invoke-virtual {p0}, Lau/b;->c()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    invoke-virtual {p0, v0}, Lau/b;->b(I)Lcom/google/googlenav/D;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public e(I)V
    .registers 2

    iput p1, p0, Lau/b;->g:I

    return-void
.end method

.method public f()I
    .registers 2

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {v0}, Lau/h;->d()I

    move-result v0

    goto :goto_7
.end method

.method public f(I)J
    .registers 4

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lau/h;->h(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(I)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0, p1}, Lau/b;->l(I)Lau/h;

    move-result-object v0

    invoke-virtual {v0}, Lau/h;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public h(I)LaJ/B;
    .registers 3

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lau/h;->c(I)LaJ/B;

    move-result-object v0

    return-object v0
.end method

.method public i(I)Lt/y;
    .registers 3

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lau/h;->d(I)Lt/y;

    move-result-object v0

    return-object v0
.end method

.method public i_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public j(I)Lau/d;
    .registers 3

    if-ltz p1, :cond_7

    iget-object v0, p0, Lau/b;->i:[Lau/d;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lau/b;->i:[Lau/d;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public k()I
    .registers 2

    iget v0, p0, Lau/b;->b:I

    return v0
.end method

.method public k(I)Lam/b;
    .registers 3

    iget-object v0, p0, Lau/b;->j:[Lam/b;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public l(I)Lau/h;
    .registers 3

    iget-object v0, p0, Lau/b;->h:[Lau/h;

    if-eqz v0, :cond_b

    if-ltz p1, :cond_b

    iget-object v0, p0, Lau/b;->h:[Lau/h;

    array-length v0, v0

    if-lt p1, v0, :cond_d

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lau/b;->h:[Lau/h;

    aget-object v0, v0, p1

    goto :goto_c
.end method

.method public l()Z
    .registers 2

    iget v0, p0, Lau/b;->b:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public l_()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public m(I)I
    .registers 3

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lau/h;->g(I)I

    move-result v0

    return v0
.end method

.method public m()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lau/b;->b:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public n(I)Lau/s;
    .registers 3

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lau/h;->b(I)Lau/s;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .registers 3

    iget v0, p0, Lau/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public o(I)V
    .registers 2

    iput p1, p0, Lau/b;->D:I

    return-void
.end method

.method public o()[Lam/b;
    .registers 2

    iget-object v0, p0, Lau/b;->P:[Lam/b;

    return-object v0
.end method

.method public abstract p()I
.end method

.method public p(I)Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lau/b;->J:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lau/b;->g(I)Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    const-string v0, ""

    goto :goto_8
.end method

.method public q()Lam/b;
    .registers 2

    iget-object v0, p0, Lau/b;->f:Lam/b;

    return-object v0
.end method

.method public q(I)Z
    .registers 3

    invoke-virtual {p0}, Lau/b;->ad()Lau/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lau/h;->i(I)Z

    move-result v0

    return v0
.end method

.method public r(I)V
    .registers 2

    iput p1, p0, Lau/b;->k:I

    return-void
.end method

.method public r()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public s()I
    .registers 2

    iget v0, p0, Lau/b;->g:I

    return v0
.end method

.method public s(I)V
    .registers 3

    iput p1, p0, Lau/b;->K:I

    const/4 v0, 0x0

    iput v0, p0, Lau/b;->L:I

    return-void
.end method

.method public t()V
    .registers 2

    iget-object v0, p0, Lau/b;->W:Lau/e;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lau/b;->W:Lau/e;

    invoke-interface {v0}, Lau/e;->a()V

    :cond_9
    return-void
.end method

.method public t(I)Z
    .registers 3

    iget v0, p0, Lau/b;->S:I

    invoke-static {p1, v0}, Lau/b;->b(II)Z

    move-result v0

    return v0
.end method

.method protected u()Lam/b;
    .registers 7

    new-instance v1, Lam/b;

    sget-object v0, LbD/aR;->a:Lam/e;

    invoke-direct {v1, v0}, Lam/b;-><init>(Lam/e;)V

    iget-object v0, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    if-eqz v0, :cond_28

    const/4 v0, 0x2

    iget-object v2, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    invoke-virtual {v2}, Lcom/google/googlenav/ui/x;->e()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lam/b;->h(II)V

    iget-object v0, p0, Lau/b;->e:Lcom/google/googlenav/ui/x;

    invoke-virtual {v0}, Lcom/google/googlenav/ui/x;->d()[J

    move-result-object v2

    const/4 v0, 0x0

    :goto_1c
    array-length v3, v2

    if-ge v0, v3, :cond_28

    const/4 v3, 0x3

    aget-wide v4, v2, v0

    invoke-virtual {v1, v3, v4, v5}, Lam/b;->a(IJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_28
    const/4 v0, 0x1

    invoke-direct {p0}, Lau/b;->aW()Lam/b;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lam/b;->b(ILam/b;)V

    return-object v1
.end method

.method public u(I)V
    .registers 4

    invoke-virtual {p0, p1}, Lau/b;->t(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget v0, p0, Lau/b;->S:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lau/b;->S:I

    :cond_d
    return-void
.end method

.method public v(I)V
    .registers 2

    iput p1, p0, Lau/b;->S:I

    return-void
.end method

.method public v()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .registers 2

    iget-boolean v0, p0, Lau/b;->s:Z

    return v0
.end method

.method public x()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lau/b;->s:Z

    return-void
.end method

.method public y()Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->D()[Lau/x;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lau/b;->E()[Lau/x;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public z()I
    .registers 2

    iget v0, p0, Lau/b;->p:I

    return v0
.end method

.method public z_()Z
    .registers 2

    invoke-virtual {p0}, Lau/b;->F()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method
