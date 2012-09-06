.class final Lcom/google/android/apps/analytics/s;
.super Landroid/os/HandlerThread;


# instance fields
.field volatile a:Landroid/os/Handler;

.field private final b:Lcom/google/android/apps/analytics/x;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/google/android/apps/analytics/t;

.field private final h:Lcom/google/android/apps/analytics/g;

.field private final i:Lcom/google/android/apps/analytics/u;

.field private final j:Lcom/google/android/apps/analytics/r;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/g;Lcom/google/android/apps/analytics/x;Ljava/lang/String;Lcom/google/android/apps/analytics/r;)V
    .registers 7

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/apps/analytics/s;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/analytics/s;->g:Lcom/google/android/apps/analytics/t;

    iput-object p1, p0, Lcom/google/android/apps/analytics/s;->h:Lcom/google/android/apps/analytics/g;

    iput-object p3, p0, Lcom/google/android/apps/analytics/s;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/s;->b:Lcom/google/android/apps/analytics/x;

    new-instance v0, Lcom/google/android/apps/analytics/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/analytics/u;-><init>(Lcom/google/android/apps/analytics/s;B)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/s;->i:Lcom/google/android/apps/analytics/u;

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->b:Lcom/google/android/apps/analytics/x;

    iget-object v1, p0, Lcom/google/android/apps/analytics/s;->i:Lcom/google/android/apps/analytics/u;

    iput-object v1, v0, Lcom/google/android/apps/analytics/x;->b:Lcom/google/android/apps/analytics/y;

    iput-object p4, p0, Lcom/google/android/apps/analytics/s;->j:Lcom/google/android/apps/analytics/r;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/g;Ljava/lang/String;Lcom/google/android/apps/analytics/r;)V
    .registers 6

    new-instance v0, Lcom/google/android/apps/analytics/x;

    invoke-static {p3}, Lcom/google/android/apps/analytics/r;->a(Lcom/google/android/apps/analytics/r;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/analytics/x;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/analytics/s;-><init>(Lcom/google/android/apps/analytics/g;Lcom/google/android/apps/analytics/x;Ljava/lang/String;Lcom/google/android/apps/analytics/r;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/g;Ljava/lang/String;Lcom/google/android/apps/analytics/r;B)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/analytics/s;-><init>(Lcom/google/android/apps/analytics/g;Ljava/lang/String;Lcom/google/android/apps/analytics/r;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/s;)I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/s;->d:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/s;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/s;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/s;J)J
    .registers 7

    iget-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/s;Lcom/google/android/apps/analytics/t;)Lcom/google/android/apps/analytics/t;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/s;->g:Lcom/google/android/apps/analytics/t;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/s;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/s;->d:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/s;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/s;J)J
    .registers 5

    const-wide/16 v0, 0x2

    iput-wide v0, p0, Lcom/google/android/apps/analytics/s;->f:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/r;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->j:Lcom/google/android/apps/analytics/r;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/x;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->b:Lcom/google/android/apps/analytics/x;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/g;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->h:Lcom/google/android/apps/analytics/g;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/analytics/s;)I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/s;->e:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/apps/analytics/s;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/u;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->i:Lcom/google/android/apps/analytics/u;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/apps/analytics/s;)Lcom/google/android/apps/analytics/t;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->g:Lcom/google/android/apps/analytics/t;

    return-object v0
.end method


# virtual methods
.method public final a([Lcom/google/android/apps/analytics/m;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->a:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/analytics/s;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/analytics/t;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/analytics/t;-><init>(Lcom/google/android/apps/analytics/s;[Lcom/google/android/apps/analytics/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method protected final onLooperPrepared()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/s;->a:Landroid/os/Handler;

    return-void
.end method
