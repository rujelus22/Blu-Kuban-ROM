.class final Lcom/google/android/ytremote/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/b/k;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/net/MulticastSocket;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/b/k;Ljava/lang/String;Ljava/net/MulticastSocket;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/b/m;->a:Lcom/google/android/ytremote/b/k;

    iput-object p2, p0, Lcom/google/android/ytremote/b/m;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/ytremote/b/m;->c:Ljava/net/MulticastSocket;

    .line 471
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/google/android/ytremote/b/m;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/ytremote/b/k;->a(Ljava/lang/String;)Ljava/net/DatagramPacket;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_d

    .line 477
    iget-object v1, p0, Lcom/google/android/ytremote/b/m;->c:Ljava/net/MulticastSocket;

    invoke-virtual {v1, v0}, Ljava/net/MulticastSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 485
    :cond_d
    :goto_d
    return-void

    .line 479
    :catch_e
    move-exception v0

    .line 483
    invoke-static {}, Lcom/google/android/ytremote/b/k;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error sending M-search:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method
