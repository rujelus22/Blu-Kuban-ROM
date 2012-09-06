.class Lcom/google/android/apps/analytics/u;
.super Landroid/os/HandlerThread;


# instance fields
.field volatile a:Landroid/os/Handler;

.field private final b:Lcom/google/android/apps/analytics/z;

.field private final c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:Lcom/google/android/apps/analytics/v;

.field private final h:Lcom/google/android/apps/analytics/g;

.field private final i:Lcom/google/android/apps/analytics/w;

.field private final j:Lcom/google/android/apps/analytics/s;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/analytics/g;Lcom/google/android/apps/analytics/z;Ljava/lang/String;Lcom/google/android/apps/analytics/s;)V
    .registers 7

    const/4 v1, 0x0

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, Lcom/google/android/apps/analytics/u;->e:I

    iput-object v1, p0, Lcom/google/android/apps/analytics/u;->g:Lcom/google/android/apps/analytics/v;

    iput-object p1, p0, Lcom/google/android/apps/analytics/u;->h:Lcom/google/android/apps/analytics/g;

    iput-object p3, p0, Lcom/google/android/apps/analytics/u;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/apps/analytics/u;->b:Lcom/google/android/apps/analytics/z;

    new-instance v0, Lcom/google/android/apps/analytics/w;

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/analytics/w;-><init>(Lcom/google/android/apps/analytics/u;Lcom/google/android/apps/analytics/t;)V

    iput-object v0, p0, Lcom/google/android/apps/analytics/u;->i:Lcom/google/android/apps/analytics/w;

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->b:Lcom/google/android/apps/analytics/z;

    iget-object v1, p0, Lcom/google/android/apps/analytics/u;->i:Lcom/google/android/apps/analytics/w;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/analytics/z;->a(Lcom/google/android/apps/analytics/A;)V

    iput-object p4, p0, Lcom/google/android/apps/analytics/u;->j:Lcom/google/android/apps/analytics/s;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/apps/analytics/g;Ljava/lang/String;Lcom/google/android/apps/analytics/s;)V
    .registers 6

    new-instance v0, Lcom/google/android/apps/analytics/z;

    invoke-static {p3}, Lcom/google/android/apps/analytics/s;->a(Lcom/google/android/apps/analytics/s;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/apps/analytics/z;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/apps/analytics/u;-><init>(Lcom/google/android/apps/analytics/g;Lcom/google/android/apps/analytics/z;Ljava/lang/String;Lcom/google/android/apps/analytics/s;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/analytics/g;Ljava/lang/String;Lcom/google/android/apps/analytics/s;Lcom/google/android/apps/analytics/t;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/analytics/u;-><init>(Lcom/google/android/apps/analytics/g;Ljava/lang/String;Lcom/google/android/apps/analytics/s;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/u;)I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/u;->d:I

    return v0
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/u;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/u;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/u;J)J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/apps/analytics/u;->f:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/apps/analytics/u;->f:J

    return-wide v0
.end method

.method static synthetic a(Lcom/google/android/apps/analytics/u;Lcom/google/android/apps/analytics/v;)Lcom/google/android/apps/analytics/v;
    .registers 2

    iput-object p1, p0, Lcom/google/android/apps/analytics/u;->g:Lcom/google/android/apps/analytics/v;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/u;I)I
    .registers 2

    iput p1, p0, Lcom/google/android/apps/analytics/u;->d:I

    return p1
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/u;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/apps/analytics/u;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/google/android/apps/analytics/u;J)J
    .registers 3

    iput-wide p1, p0, Lcom/google/android/apps/analytics/u;->f:J

    return-wide p1
.end method

.method static synthetic c(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/s;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->j:Lcom/google/android/apps/analytics/s;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/z;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->b:Lcom/google/android/apps/analytics/z;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/g;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->h:Lcom/google/android/apps/analytics/g;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/apps/analytics/u;)I
    .registers 2

    iget v0, p0, Lcom/google/android/apps/analytics/u;->e:I

    return v0
.end method

.method static synthetic g(Lcom/google/android/apps/analytics/u;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/w;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->i:Lcom/google/android/apps/analytics/w;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/apps/analytics/u;)Lcom/google/android/apps/analytics/v;
    .registers 2

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->g:Lcom/google/android/apps/analytics/v;

    return-object v0
.end method


# virtual methods
.method public a([Lcom/google/android/apps/analytics/m;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->a:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/analytics/u;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/apps/analytics/v;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/analytics/v;-><init>(Lcom/google/android/apps/analytics/u;[Lcom/google/android/apps/analytics/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method protected onLooperPrepared()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/analytics/u;->a:Landroid/os/Handler;

    return-void
.end method
