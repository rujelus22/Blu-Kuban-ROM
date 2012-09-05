.class public LaV/i;
.super LaV/f;


# static fields
.field public static b:J


# instance fields
.field private final c:Ljava/util/LinkedList;

.field private d:LaV/k;

.field private final e:LaV/j;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0xfa

    sput-wide v0, LaV/i;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, LaV/f;-><init>()V

    new-instance v0, LaV/j;

    invoke-direct {v0, p0}, LaV/j;-><init>(LaV/i;)V

    iput-object v0, p0, LaV/i;->e:LaV/j;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LaV/i;->c:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput v0, p0, LaV/i;->f:I

    return-void
.end method

.method static synthetic a(LaV/i;)LaV/k;
    .registers 2

    iget-object v0, p0, LaV/i;->d:LaV/k;

    return-object v0
.end method

.method static synthetic a(LaV/i;LaV/k;)LaV/k;
    .registers 2

    iput-object p1, p0, LaV/i;->d:LaV/k;

    return-object p1
.end method

.method static synthetic b(LaV/i;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, LaV/i;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic c(LaV/i;)I
    .registers 2

    iget v0, p0, LaV/i;->f:I

    return v0
.end method

.method static synthetic d(LaV/i;)I
    .registers 2

    invoke-super {p0}, LaV/f;->g()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x1

    iput-boolean v0, p0, LaV/i;->a:Z

    invoke-static {}, LaV/n;->a()LaV/n;

    move-result-object v1

    monitor-enter p0

    :try_start_8
    new-instance v0, LaV/k;

    invoke-virtual {v1}, LaV/n;->f()Lam/b;

    move-result-object v3

    invoke-virtual {v1}, LaV/n;->g()LaJ/B;

    move-result-object v4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, LaV/k;-><init>(LaV/i;Ljava/lang/String;Lam/b;LaJ/B;I)V

    iput-object v0, p0, LaV/i;->d:LaV/k;

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_21

    iget-object v0, p0, LaV/i;->e:LaV/j;

    invoke-virtual {v0}, LaV/j;->a()V

    return-void

    :catchall_21
    move-exception v0

    :try_start_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string v0, "r"

    return-object v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, LaV/i;->f:I

    return-void
.end method

.method public c()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized e()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, LaV/f;->e()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, LaV/i;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, LaV/i;->d:LaV/k;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_18

    if-nez v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit p0

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
