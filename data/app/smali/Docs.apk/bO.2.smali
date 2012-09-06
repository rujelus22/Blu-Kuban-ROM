.class LbO;
.super Landroid/os/HandlerThread;


# instance fields
.field private a:I

.field private a:J

.field volatile a:Landroid/os/Handler;

.field private final a:LbA;

.field private final a:LbM;

.field private a:LbP;

.field private final a:LbQ;

.field private final a:LbU;

.field private final a:Ljava/lang/String;

.field private b:I


# direct methods
.method private constructor <init>(LbA;LbU;Ljava/lang/String;LbM;)V
    .registers 7

    const/4 v1, 0x0

    const-string v0, "DispatcherThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x1e

    iput v0, p0, LbO;->b:I

    iput-object v1, p0, LbO;->a:LbP;

    iput-object p1, p0, LbO;->a:LbA;

    iput-object p3, p0, LbO;->a:Ljava/lang/String;

    iput-object p2, p0, LbO;->a:LbU;

    new-instance v0, LbQ;

    invoke-direct {v0, p0, v1}, LbQ;-><init>(LbO;LbN;)V

    iput-object v0, p0, LbO;->a:LbQ;

    iget-object v0, p0, LbO;->a:LbU;

    iget-object v1, p0, LbO;->a:LbQ;

    invoke-virtual {v0, v1}, LbU;->a(LbV;)V

    iput-object p4, p0, LbO;->a:LbM;

    return-void
.end method

.method private constructor <init>(LbA;Ljava/lang/String;LbM;)V
    .registers 6

    new-instance v0, LbU;

    invoke-static {p3}, LbM;->a(LbM;)Lorg/apache/http/HttpHost;

    move-result-object v1

    invoke-direct {v0, v1}, LbU;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-direct {p0, p1, v0, p2, p3}, LbO;-><init>(LbA;LbU;Ljava/lang/String;LbM;)V

    return-void
.end method

.method synthetic constructor <init>(LbA;Ljava/lang/String;LbM;LbN;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, LbO;-><init>(LbA;Ljava/lang/String;LbM;)V

    return-void
.end method

.method static synthetic a(LbO;)I
    .registers 2

    iget v0, p0, LbO;->a:I

    return v0
.end method

.method static synthetic a(LbO;I)I
    .registers 2

    iput p1, p0, LbO;->b:I

    return p1
.end method

.method static synthetic a(LbO;)J
    .registers 3

    iget-wide v0, p0, LbO;->a:J

    return-wide v0
.end method

.method static synthetic a(LbO;J)J
    .registers 5

    iget-wide v0, p0, LbO;->a:J

    mul-long/2addr v0, p1

    iput-wide v0, p0, LbO;->a:J

    return-wide v0
.end method

.method static synthetic a(LbO;)LbA;
    .registers 2

    iget-object v0, p0, LbO;->a:LbA;

    return-object v0
.end method

.method static synthetic a(LbO;)LbM;
    .registers 2

    iget-object v0, p0, LbO;->a:LbM;

    return-object v0
.end method

.method static synthetic a(LbO;)LbP;
    .registers 2

    iget-object v0, p0, LbO;->a:LbP;

    return-object v0
.end method

.method static synthetic a(LbO;LbP;)LbP;
    .registers 2

    iput-object p1, p0, LbO;->a:LbP;

    return-object p1
.end method

.method static synthetic a(LbO;)LbQ;
    .registers 2

    iget-object v0, p0, LbO;->a:LbQ;

    return-object v0
.end method

.method static synthetic a(LbO;)LbU;
    .registers 2

    iget-object v0, p0, LbO;->a:LbU;

    return-object v0
.end method

.method static synthetic a(LbO;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, LbO;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(LbO;)I
    .registers 2

    iget v0, p0, LbO;->b:I

    return v0
.end method

.method static synthetic b(LbO;I)I
    .registers 2

    iput p1, p0, LbO;->a:I

    return p1
.end method

.method static synthetic b(LbO;J)J
    .registers 3

    iput-wide p1, p0, LbO;->a:J

    return-wide p1
.end method


# virtual methods
.method public a([LbG;)V
    .registers 4

    iget-object v0, p0, LbO;->a:Landroid/os/Handler;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, LbO;->a:Landroid/os/Handler;

    new-instance v1, LbP;

    invoke-direct {v1, p0, p1}, LbP;-><init>(LbO;[LbG;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method

.method protected onLooperPrepared()V
    .registers 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, LbO;->a:Landroid/os/Handler;

    return-void
.end method
