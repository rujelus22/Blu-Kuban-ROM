.class final Lcom/google/android/youtube/core/utils/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/utils/n;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/utils/n;)V
    .registers 2
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/youtube/core/utils/o;->a:Lcom/google/android/youtube/core/utils/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/o;->a:Lcom/google/android/youtube/core/utils/n;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Lcom/google/android/youtube/core/utils/n;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 45
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/o;->a:Lcom/google/android/youtube/core/utils/n;

    check-cast p2, Landroid/os/Binder;

    invoke-static {v0, p2}, Lcom/google/android/youtube/core/utils/n;->a(Lcom/google/android/youtube/core/utils/n;Landroid/os/Binder;)Landroid/os/Binder;

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/o;->a:Lcom/google/android/youtube/core/utils/n;

    iget-object v1, p0, Lcom/google/android/youtube/core/utils/o;->a:Lcom/google/android/youtube/core/utils/n;

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/n;->b(Lcom/google/android/youtube/core/utils/n;)Landroid/os/Binder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/utils/n;->b(Landroid/os/Binder;)V

    .line 48
    :cond_1a
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/o;->a:Lcom/google/android/youtube/core/utils/n;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/n;->a(Lcom/google/android/youtube/core/utils/n;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/utils/o;->a:Lcom/google/android/youtube/core/utils/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/n;->a(Lcom/google/android/youtube/core/utils/n;Landroid/os/Binder;)Landroid/os/Binder;

    .line 56
    :cond_e
    return-void
.end method
