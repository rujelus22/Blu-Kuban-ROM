.class Lcom/google/android/location/os/real/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:LW/a;

.field final synthetic d:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;Ljava/lang/String;ILW/a;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/location/os/real/c;->d:Lcom/google/android/location/os/real/b;

    iput-object p2, p0, Lcom/google/android/location/os/real/c;->a:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/location/os/real/c;->b:I

    iput-object p4, p0, Lcom/google/android/location/os/real/c;->c:LW/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/location/os/real/c;->d:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->a(Lcom/google/android/location/os/real/b;)Ld/C;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/os/real/c;->a:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/location/os/real/c;->b:I

    iget-object v3, p0, Lcom/google/android/location/os/real/c;->c:LW/a;

    invoke-interface {v0, v1, v2, v3}, Ld/C;->a(Ljava/lang/String;ILW/a;)V

    iget-object v0, p0, Lcom/google/android/location/os/real/c;->d:Lcom/google/android/location/os/real/b;

    invoke-static {v0}, Lcom/google/android/location/os/real/b;->b(Lcom/google/android/location/os/real/b;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method
