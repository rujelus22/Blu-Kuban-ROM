.class Lcom/google/android/location/os/real/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/location/os/real/o;->c:Lcom/google/android/location/os/real/b;

    iput p2, p0, Lcom/google/android/location/os/real/o;->a:I

    iput-object p3, p0, Lcom/google/android/location/os/real/o;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/location/os/real/o;->c:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->a(Lcom/google/android/location/os/real/b;)Ld/C;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/os/real/o;->a:I

    iget-object v2, p0, Lcom/google/android/location/os/real/o;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ld/C;->a(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/o;->c:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->b(Lcom/google/android/location/os/real/b;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
