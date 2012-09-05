.class Lcom/google/android/location/os/real/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/location/os/real/e;->a:Lcom/google/android/location/os/real/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/location/os/real/e;->a:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->a(Lcom/google/android/location/os/real/b;)Ld/C;

    move-result-object v0

    invoke-interface {v0}, Ld/C;->c()V

    iget-object v0, p0, Lcom/google/android/location/os/real/e;->a:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->b(Lcom/google/android/location/os/real/b;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
