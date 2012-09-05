.class Lcom/google/googlenav/android/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Lcom/google/googlenav/android/l;


# direct methods
.method constructor <init>(Lcom/google/googlenav/android/l;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/googlenav/android/v;->b:Lcom/google/googlenav/android/l;

    iput-object p2, p0, Lcom/google/googlenav/android/v;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/googlenav/android/v;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/googlenav/android/w;

    invoke-direct {v1, p0}, Lcom/google/googlenav/android/w;-><init>(Lcom/google/googlenav/android/v;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
