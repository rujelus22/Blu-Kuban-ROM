.class public Lcom/google/googlenav/android/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/googlenav/android/ac;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/ac;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/googlenav/android/ac;->b:Z

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/ac;->b:Z

    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .registers 5

    new-instance v0, Lcom/google/googlenav/android/ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/android/ad;-><init>(Lcom/google/googlenav/android/ac;Ljava/lang/Runnable;Z)V

    iget-object v1, p0, Lcom/google/googlenav/android/ac;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/ac;->b:Z

    return-void
.end method
