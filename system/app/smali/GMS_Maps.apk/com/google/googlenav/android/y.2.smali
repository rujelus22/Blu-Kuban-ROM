.class public Lcom/google/googlenav/android/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/googlenav/android/Y;->a:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/android/Y;)Z
    .registers 2
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/googlenav/android/Y;->b:Z

    return v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlenav/android/Y;->b:Z

    .line 135
    return-void
.end method

.method public a(Ljava/lang/Runnable;Z)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 124
    new-instance v0, Lcom/google/googlenav/android/Z;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/googlenav/android/Z;-><init>(Lcom/google/googlenav/android/Y;Ljava/lang/Runnable;Z)V

    .line 126
    iget-object v1, p0, Lcom/google/googlenav/android/Y;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlenav/android/Y;->b:Z

    .line 143
    return-void
.end method
