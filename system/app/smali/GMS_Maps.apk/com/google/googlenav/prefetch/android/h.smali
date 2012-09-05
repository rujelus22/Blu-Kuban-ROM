.class Lcom/google/googlenav/prefetch/android/h;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

.field private b:Lcom/google/googlenav/prefetch/android/w;

.field private c:I

.field private final d:I

.field private e:LaR/e;

.field private f:LaR/f;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/google/googlenav/prefetch/android/PrefetcherService;Lcom/google/googlenav/prefetch/android/w;ILaR/e;LaR/f;J)V
    .registers 9

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/h;->a:Lcom/google/googlenav/prefetch/android/PrefetcherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/googlenav/prefetch/android/h;->b:Lcom/google/googlenav/prefetch/android/w;

    iput p3, p0, Lcom/google/googlenav/prefetch/android/h;->c:I

    invoke-virtual {p2}, Lcom/google/googlenav/prefetch/android/w;->b()I

    move-result v0

    iput v0, p0, Lcom/google/googlenav/prefetch/android/h;->d:I

    iput-object p4, p0, Lcom/google/googlenav/prefetch/android/h;->e:LaR/e;

    iput-object p5, p0, Lcom/google/googlenav/prefetch/android/h;->f:LaR/f;

    iput-wide p6, p0, Lcom/google/googlenav/prefetch/android/h;->g:J

    return-void
.end method


# virtual methods
.method public a()Lcom/google/googlenav/prefetch/android/w;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/h;->b:Lcom/google/googlenav/prefetch/android/w;

    return-object v0
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/prefetch/android/h;->c:I

    return v0
.end method

.method public c()V
    .registers 2

    iget v0, p0, Lcom/google/googlenav/prefetch/android/h;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/googlenav/prefetch/android/h;->c:I

    return-void
.end method

.method public d()LaR/e;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/h;->e:LaR/e;

    return-object v0
.end method

.method public e()I
    .registers 2

    iget v0, p0, Lcom/google/googlenav/prefetch/android/h;->d:I

    return v0
.end method

.method public f()LaR/f;
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/h;->f:LaR/f;

    return-object v0
.end method

.method public g()J
    .registers 3

    iget-wide v0, p0, Lcom/google/googlenav/prefetch/android/h;->g:J

    return-wide v0
.end method
