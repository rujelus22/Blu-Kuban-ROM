.class Lcom/google/android/location/os/real/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;I)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/location/os/real/t;->b:Lcom/google/android/location/os/real/b;

    iput p2, p0, Lcom/google/android/location/os/real/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/location/os/real/t;->b:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->a(Lcom/google/android/location/os/real/b;)Ld/C;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/os/real/t;->a:I

    invoke-interface {v0, v1}, Ld/C;->a(I)V

    iget-object v0, p0, Lcom/google/android/location/os/real/t;->b:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->b(Lcom/google/android/location/os/real/b;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
