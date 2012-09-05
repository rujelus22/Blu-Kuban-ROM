.class Lcom/google/googlenav/prefetch/android/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/googlenav/prefetch/android/p;


# direct methods
.method constructor <init>(Lcom/google/googlenav/prefetch/android/p;)V
    .registers 2

    iput-object p1, p0, Lcom/google/googlenav/prefetch/android/r;->a:Lcom/google/googlenav/prefetch/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/googlenav/prefetch/android/r;->a:Lcom/google/googlenav/prefetch/android/p;

    invoke-virtual {v0}, Lcom/google/googlenav/prefetch/android/p;->b()V

    return-void
.end method
