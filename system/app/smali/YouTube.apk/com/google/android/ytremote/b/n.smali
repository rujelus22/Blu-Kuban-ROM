.class final Lcom/google/android/ytremote/b/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/ytremote/b/k;

.field private final synthetic b:Ljava/net/MulticastSocket;


# direct methods
.method constructor <init>(Lcom/google/android/ytremote/b/k;Ljava/net/MulticastSocket;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/ytremote/b/n;->a:Lcom/google/android/ytremote/b/k;

    iput-object p2, p0, Lcom/google/android/ytremote/b/n;->b:Ljava/net/MulticastSocket;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/google/android/ytremote/b/n;->a:Lcom/google/android/ytremote/b/k;

    iget-object v1, p0, Lcom/google/android/ytremote/b/n;->b:Ljava/net/MulticastSocket;

    invoke-static {}, Lcom/google/android/ytremote/b/k;->c()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/ytremote/b/k;->a(Lcom/google/android/ytremote/b/k;Ljava/net/DatagramSocket;Ljava/util/List;)V

    const/4 v0, 0x0

    return-object v0
.end method
