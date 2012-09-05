.class Lcom/google/android/location/os/real/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;ZZ)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/location/os/real/m;->c:Lcom/google/android/location/os/real/b;

    iput-boolean p2, p0, Lcom/google/android/location/os/real/m;->a:Z

    iput-boolean p3, p0, Lcom/google/android/location/os/real/m;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/m;->c:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->a(Lcom/google/android/location/os/real/b;)Ld/C;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/os/real/m;->a:Z

    iget-boolean v2, p0, Lcom/google/android/location/os/real/m;->b:Z

    invoke-interface {v0, v1, v2}, Ld/C;->a(ZZ)V

    iget-object v0, p0, Lcom/google/android/location/os/real/m;->c:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->b(Lcom/google/android/location/os/real/b;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
